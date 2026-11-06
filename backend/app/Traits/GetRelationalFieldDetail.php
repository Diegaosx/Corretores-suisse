<?php

namespace App\Traits;

use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use App\Models\Collections;
use App\Models\User;
use Illuminate\Support\Str; // For slug generation
trait GetRelationalFieldDetail
 {

    /**
    * Validate the request data using dynamically generated rules.
    *
    * @param array $data
    * @param array $predefinedRules
    * @return array
    */

    private function getRelationalFieldDetail($tableName, $id, $fieldParts=[], $collectionHandle='')
        {
        // Default return structure
        $GetData = [ 'id' => $id, 'display' => $id ];
        // Default 'display' is the ID
        $allRelatedData = [];
        // Array to hold all the related data
        try {
            if ($tableName == 'users' || $tableName == 'collections') {
                $tableName = $tableName;
            } else {
                $tableName = $tableName . '_meta';
            }

            // Check if table exists in the database
            if ( !Schema::hasTable( $tableName ) ) {
                \Log::error( "Table does not exist: $tableName" );
                return $GetData;
                // Return default if table doesn't exist
             }    
             // Fetch all entries for dropdown options
            //  $entries = \DB::table($tableName)->get();
            // Fetch all entries for dropdown options
            $query = \DB::table($tableName);         
            // If table is 'collections', filter by handle starting with "templates_"
            if ($tableName == 'collections') {
                $query->where('handle', 'LIKE', 'template_%')->where('handle', '!=', 'templates'); // Correct filter
                // if(!empty($_REQUEST['current_user_id']) && $_REQUEST['current_role']!='admin'){
                //     $query->where('created_by', $_REQUEST['current_user_id']);
                // }
            }
            else if($tableName=='users'){
                // users
                if($collectionHandle=='templates'){
                    $defaultrole=2;
                }else{
                    $defaultrole=3;
                }
                if(!empty($fieldParts[0])){
                    if (strpos($fieldParts[0], 'employee_assigned') !== false) {
                        $defaultrole = 2; // or whatever role you want to set
                    }
                }
                $query->select('users.*', 'user_roles.*', 'users.id as id')
                    ->join('user_roles', 'user_roles.user_id', '=', 'users.id')
                    ->where('user_roles.role_id', $defaultrole);
                    if(!empty($_REQUEST['current_user_id']) && $_REQUEST['current_role']!='admin'){
                        $query->join('user_meta', 'user_meta.user_id', '=', 'users.id')
                            ->where('user_meta.rel_employee_assigned_col_users', $_REQUEST['current_user_id']);
                    }
                    
            }
            $entries = $query->get(); // Fetch filtered data
             // Process all options to keep only id and display fields
             $groups=[];
             foreach ($entries as $entry) {
                 $entry = (array) $entry; // Convert to array
                //  if(strpos($fieldParts[0], 'choose_blueprint') !== false){
                    if(!empty($_REQUEST['current_user_id']) && $_REQUEST['current_role']!='admin'){

                        // for non admin user only show the data which is created by the current user
                        if(array_key_exists('created_by', $entry)){

                            if($entry['created_by']!=$_REQUEST['current_user_id']){
                                // dd(vars: $entry);
                                continue;
                            }
                        }
                        if(array_key_exists('rel_created_by_col_users', $entry)){
                            if($entry['rel_created_by_col_users']!=$_REQUEST['current_user_id']){
                                continue;
                            }
                        }
                    }
                // }
                 if ($tableName == 'collections') {
                    $entry_handle = $entry['handle']; // Default display is the ID
                }else{
                    $entry_handle = $entry['id']; // Default display is the ID
                }

                 // Check common display fields
                 foreach (['name', 'title',  'text_name', 'text_title', 'meta_title' ,'text_meta_title','text_name','text_company_name'] as $field) {
                     if (!empty($entry[$field])) {
                         $display = $entry[$field];
                         break;
                     }
                 }
                 // Add the processed entry to all options
                 $allRelatedData[] = ['id' => $entry_handle , 'display' => $display, 'group'=>!empty($entry['text_group_name'])?$entry['text_group_name']:'', 'fieldParts'=>$fieldParts, 'collectionHandle'=>$collectionHandle, 'entry'=>$entry];
             }
             // Fetch the related entry for the selected ID
             $result = \DB::table($tableName);
             if($tableName=='users'){
                $result=$result ->join('user_meta', 'user_meta.user_id', '=', "$tableName.id")->selectRaw('users.*, user_meta.*, user_meta.id as user_meta_id, users.id as id')->where('users.id', $id);
             }else{
                if(str_starts_with($id, 'template_')){
                    $result=$result ->join($id.'_meta', $id.'_meta.collection_id', '=', "$tableName.id")->selectRaw($id.'_meta.*, '.$tableName.".*")->where($id.'_meta.id', 1);
                }else{
                    $result =$result  ->where('id', $id);
                }
                
             }
              $result =$result->first();
            //  print_r( $result );
            $relatedReference='';
             if ($result) {
                $data = (array) $result;
                // print_r(value: $data);
                // $GetData = array_merge($GetData, $data); // here send all data of the selected row

                $finaldata=$data;
                // if($recursive){
                    foreach($finaldata as $key=>$value){
                        if (Str::startsWith($key, 'rel_') && Str::contains($key, '_col_') ) {
                            // Extract the portion after "_col_"
                            $fieldParts = explode('_col_', $key);
                            if (count($fieldParts) > 1) {
                                $relatedReference = $fieldParts[1]; // Get the part after "_col_"
                            } 
                            // Determine the related meta table
                            if ($relatedReference === 'users') {
                                $relatedMetaTable = 'users';
                            } elseif($relatedReference === 'collections'){
                                $relatedMetaTable = 'collections';
                            } else {
                                $relatedMetaTable = $relatedReference; // Use the extracted value as the table name
                            }
                            //  echo $relatedMetaTable."_meta"."\n";
                            if(Schema::hasTable($relatedMetaTable . "_meta")){
                                $newdata = DB::table($relatedMetaTable."_meta")->where('id', $value)->first();
                                if(!empty($newdata)){
                                    $data[$key]=(array) $newdata;
                                }
                            }
                            // $data[$key]=(array) $displayData;
                            // print_r( $displayData);
                        }
                       
                    }
                // }
                 // \Log::info("Data found: ", $data);
                 
                 // Fields to prioritize as display fields
                 $displayFields = ['name', 'title', 'text_name', 'text_title', 'meta_title' ,'text_meta_title','text_name'];
                 $GetData = array_merge($GetData, $data); // here send all data of the selected row
                 // Find the first available display field value
                //  foreach ($displayFields as $field) {
                //      if (isset($data[$field]) && !empty($data[$field])) {
                //          $GetData['display'] = $data[$field];
                //          break;
                //      }
                //  }
     
                 // Merge all fields into the return structure
                //  $GetData = array_merge($GetData);
                
             } else {
                 // \Log::warning("No data found for ID: $id in table: $tableName");
             }
         } catch (\Exception $e) {
             // \Log::error("Error fetching relational data: " . $e->getMessage());
         }
         $return=['selected' => $GetData, 'allOptions' => $allRelatedData ];
         $group=[];
         foreach($allRelatedData as $key=>$value){
            if(!empty($value['group'])){
                $group[$value['group']][]=['id'=>$value['id'], 'display'=>$value['display'], 'name'=>$value['group']];
            }
         }
         if(!empty($group)){
            $return['groups']=$group;
         }else{
            $return['groups']=[];
         }
         return $return;
        }

        }
<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use App\Models\Collections;
use App\Models\User;
use Illuminate\Support\Str; // For slug generation
use App\Traits\GetRelationalFieldDetail;
use App\Traits\DynamicValidationRules;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;
class CollectionMetaController extends Controller
{

    use GetRelationalFieldDetail; // Use the trait
    use DynamicValidationRules; // Use the trait
    public $collection;
    public $model;
    public $collectionHandle;
    public function validate_collection($collectionHandle){
        $collectionHandle = Str::slug($collectionHandle, '_');
        if($collectionHandle=='user'){
            $model=new User;
            $collection = $model::firstOrFail();
        }else{
            $model=new Collections;
            $collection = $model::where('handle', $collectionHandle)->firstOrFail();
        }
        $this->collection=$collection;
        $this->model=$model;
        $this->collectionHandle=$collectionHandle;
    }
    public function getFields($collectionHandle)
    {
       
        try {
            $this->validate_collection($collectionHandle);
            // Retrieve the collection or throw a ModelNotFoundException
            // $collection = Collections::findOrFail($collectionId);
            // Define the meta table name
            $metaTableName = $this->collectionHandle . '_meta';  
            // Check if the meta table exists
            if (!Schema::hasTable($metaTableName)) {
                return response()->json(['error' => 'Meta table does not exist.'], 404);
            }   
            // Get the columns of the meta table
            $columns = Schema::getColumnListing($metaTableName);
            $fields = [];
            foreach ($columns as $column) {   
                // Set default value as empty string
                $fields[$column] = ''; 
                // Check if the field matches the "rel_*_col_*" pattern
                if (Str::startsWith($column, 'rel_') && Str::contains($column, '_col_') ) {
                    
                    // Extract the portion after "_col_"
                    $fieldParts = explode('_col_', $column);
                    if (count($fieldParts) > 1) {
                        $relatedReference = $fieldParts[1]; // Get the part after "_col_"
                    } else {
                        throw new \Exception('Invalid field format: missing "_col_".');
                    }
                    // Determine the related meta table
                    if ($relatedReference === 'users') {
                        $relatedMetaTable = 'users';
                    } elseif($relatedReference === 'collections'){
                        $relatedMetaTable = 'collections';
                    } else {
                        $relatedMetaTable = $relatedReference; // Use the extracted value as the table name
                    }
                    // Fetch details from the related meta table
                    // if (Schema::hasTable($relatedMetaTable)) {
                    //     $relatedMeta = \DB::table($relatedMetaTable)
                    //         ->where('id', $column)
                    //         ->first();
                    // }
                    
                    // Get display value
                    $displayData = $this->getRelationalFieldDetail($relatedMetaTable, $column, [], $collectionHandle);
                    // Assign relational data to the field
                    // dd($displayData );
                    $fields[$column] = [
                        // 'selected' => $displayData['selected'] ?? null,
                        'allOptions' => $displayData['allOptions'] ?? [],
                    ];
                }
            }
            // Fetch all collections
            $allCollections = Collections::all(['id', 'name']); // Adjust the fields as necessary
            
            // Map the collections to get the desired format
            $allCollectionsArray = $allCollections->map(function ($collection) {
                return [
                    'id' => $collection->id,
                    'name' => $collection->name,
                ];
            });
            // Return both collection details and fields in the response
            return response()->json([
                'collection' => $this->collection,
                'fields' => $fields,
                'allCollections' => $allCollectionsArray,
            ], 200);
        } catch (\Exception $e) {
            // Return a 404 error if the collection is not found
            return response()->json(['error' => 'Collection not found.'], 404);
        }
    }
    
    
    function create_template($data, $current_user_id, $current_role, $validatedData){
        $newtable="template_".$this->slugify($data['text_meta_title_req']);
        $sourcetable=$data['rel_choose_blueprints_req_col_collections']."_meta";
        if($current_role!='admin'){ // auto setting created by to current user if not admin
            $created_by=$current_user_id;
        }else{
            $created_by=!empty($validatedData['rel_created_by_col_users'])?$validatedData['rel_created_by_col_users']:$current_user_id;
        }
        $insid=DB::table('collections')->insertGetId(['name'=>$data['text_meta_title_req'], 'handle'=>$newtable, 'created_by'=>$created_by]);
        if($data['rel_copy_data_req_col_boolean']==1){
            DB::statement("CREATE TABLE ".$newtable."_meta AS SELECT * FROM $sourcetable");
        }else{
            DB::statement("CREATE TABLE ".$newtable."_meta LIKE $sourcetable");
            DB::statement("INSERT INTO {$newtable}_meta (id) VALUES (1)");
        }
        // DB::statement("ALTER TABLE {$newtable}_meta MODIFY id INT UNSIGNED NOT NULL AUTO_INCREMENT");
    }

    public function create_entry(Request $request, $collectionHandle)
    {
        $message='Record added successfully!';
        // $validatedData = $request->input();
        $validatedData = $request->except(array_keys($request->allFiles())); // Exclude dynamic file fields
        $validatedData['created_at'] = now();  // Set created_at to the current date/time
        $current_role='';
        $current_user_id='';
        if(isset($validatedData['current_role'])){
            $current_role=$validatedData['current_role'];
            unset($validatedData['current_role']);
        }
        if(isset($validatedData['current_user_id'])){
            $current_user_id=$validatedData['current_user_id'];
            unset($validatedData['current_user_id']);
        }
        try {
            // return response()->json(['collectionHandle' => $collectionHandle, 'validatedData' => $validatedData], 200);
            $this->validate_collection($collectionHandle);
            $validatedData['collection_id'] = $this->collection->id; 
           
            // $collection = Collections::findOrFail($collectionId);
            $metaTableName = $this->collection->handle . '_meta';
            if (!Schema::hasTable($metaTableName)) {
                return response()->json(['error' => 'Meta table does not exist.'], 404);
            }
            if($collectionHandle=='templates' || $collectionHandle=='insurance-companies') {
                if($current_role!='admin'){ // auto setting created by to current user if not admin
                    $validatedData['rel_created_by_col_users']=$current_user_id;
                }else{
                    $validatedData['rel_created_by_col_users']=!empty($validatedData['rel_created_by_col_users'])?$validatedData['rel_created_by_col_users']:$current_user_id;
                }
            }
            // Handle file uploads
            $filePaths = $this->handleFileUploads($request);
            $validatedData = array_merge($validatedData, $filePaths);
            if($this->collection->handle=='offers'){
                $validatedData['text_status']='Creating Offer';
            }
            $insid=DB::table($metaTableName)->insertGetId($validatedData);
            if(!empty($insid) && $collectionHandle=='templates'){
                $this->create_template($validatedData, $current_user_id, $current_role, $validatedData);
                $message="Template has been created.";
            }
            if(!empty($insid) && $this->collection->handle=='offers'){
                $message="Offer has been created. You'll recieve an email with offer PDF";
                $offerdata = [
                    "OfferID" => (int)$insid,
                    // "ID" => 1,
                    // "url"=>$validatedData['text_flow_url_req'],
                    // "template_handle"=>$validatedData['rel_templates_req_col_collections'],
                ];
                $this->createOffer($offerdata);
            }
            return response()->json(['message' => $message, 'id'=>$insid], 201);
        } catch (QueryException $qe) {
            return response()->json(['error' => 'Database error: ' . $qe->getMessage()], 500);
        } catch (\Exception $e) {
            return response()->json(['error' => 'An unexpected error occurred: ' . $e->getMessage()], 500);
        }
    }


    public function fetch_entry_detail($collectionHandle, $id)
    {
        // $collectionHandle = Str::slug($collectionHandle, '_');
        try {
            $translationPath = resource_path('translations/translations.json');
            // return response()->json(['translationPath' => $translationPath], 200);
            $translations = file_exists($translationPath) ? json_decode(file_get_contents($translationPath), true) : [];
            // $collection = Collections::findOrFail($collectionId);
            $this->validate_collection($collectionHandle);
            $metaTableName = $this->collection->handle . '_meta';

            if (!Schema::hasTable($metaTableName)) {
                return response()->json(['error' => 'Meta table does not exist.'], 404);
            }

            $entry = DB::table($metaTableName)->find($id);

            if (!$entry) {
                return response()->json(['error' => 'Entry not found.'], 404);
            }
            ///

            // Process relational fields in metaData
            // foreach ($entry as &$entry) {   
                foreach ($entry as $field => $value) {             
                    // Check if the field matches the "rel_*_col_*" pattern
                    if (Str::startsWith($field, 'rel_') && Str::contains($field, '_col_') ) {
                        // Extract the portion after "_col_"
                        $fieldParts = explode('_col_', $field);
                        if (count($fieldParts) > 1) {
                            $relatedReference = $fieldParts[1]; // Get the part after "_col_"
                        } else {
                            throw new \Exception('Invalid field format: missing "_col_".');
                        }
                        // Determine the related meta table
                        if ($relatedReference === 'users') {
                            $relatedMetaTable = 'users';
                        } elseif($relatedReference === 'collections'){
                            $relatedMetaTable = 'collections';
                        } else {
                            $relatedMetaTable = $relatedReference; // Use the extracted value as the table name
                        }

                        // Fetch details from the related meta table
                        if (Schema::hasTable($relatedMetaTable)) {
                            $relatedMeta = \DB::table($relatedMetaTable)
                                ->where('id', $value)
                                ->first();
                        }
                        
                        // Get display value
                        $displayData = $this->getRelationalFieldDetail($relatedMetaTable, $value);
                        // Replace ID with both ID and display value
                        $entry->$field = $displayData;
                    }
                }
                $updatedEntry=[];
                $entryarray = json_decode(json_encode($entry), true);
                if(!empty($_GET['cleandata'])){
                    foreach($entryarray as $key=>$value){
                        $updatedKey=str_replace('_req','',$key);
                        $updatedEntry[$updatedKey]=$value;
                    }
                    $entry=$updatedEntry;
                }
                // dd($relatedMeta );
            // } 

            return response()->json(['collection' => $this->collection,'entry' => $entry,'translations' => $translations], 200);
        } catch (QueryException $qe) {
            return response()->json(['error' => 'Database error: ' . $qe->getMessage()], 500);
        } catch (\Exception $e) {
            return response()->json(['error' => 'An unexpected error occurred: ' . $e->getMessage()], 500);
        }
    }
    function createOffer($data){

        $Offer = DB::table('offers_meta')->where('id', $data['OfferID'])->first();
        $template = DB::table($Offer->rel_templates_req_col_collections."_meta")->first();
        if(!empty($template )){
            $curl = curl_init();
            $url="https://prod-27.switzerlandnorth.logic.azure.com:443/workflows/c06475967386476c9f4740687e61d671/triggers/manual/paths/invoke?api-version=2016-06-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=pdwXQHOJg29XKXKhEwlLflP-LumvV2X7cBx0TkUa1lE";
            // $url=$template->text_flow_url_req;
            // unset($data['url']);
            curl_setopt_array($curl, array(
              CURLOPT_URL => $url,
              CURLOPT_RETURNTRANSFER => true,
              CURLOPT_ENCODING => '',
              CURLOPT_MAXREDIRS => 10,
              CURLOPT_TIMEOUT => 0,
              CURLOPT_FOLLOWLOCATION => true,
              CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
              CURLOPT_CUSTOMREQUEST => 'POST',
              CURLOPT_POSTFIELDS => json_encode($data),
              CURLOPT_HTTPHEADER => array(
                'Content-Type: application/json'
              ),
            ));
            // echo "offer ran";
            $response = curl_exec($curl);
            
            // curl_close($curl);
            // echo $response;
        }
        
    }
    public function update(Request $request, $collectionHandle, $id)
    {
        // $collectionHandle = Str::slug($collectionHandle, '_');
        $validatedData = $request->except(array_keys($request->allFiles())); // Exclude dynamic file fields
        $validatedData['updated_at'] = now();  // Set updated_at to the current date/time
        // Remove 'id' from the validated data (if present) as it should not be updated manually
        unset($validatedData['ID']);
        $current_role='';
        $current_user_id='';
        if(isset($validatedData['current_role'])){
            $current_role=$validatedData['current_role'];
            unset($validatedData['current_role']);
        }
        if(isset($validatedData['current_user_id'])){
            $current_user_id=$validatedData['current_user_id'];
            unset($validatedData['current_user_id']);
        }
        
        try {
            // offer configuation
            $offerID="";
            $offercreated=false;
            $message='Record updated successfully!';
            if(!empty($validatedData['offerID'])){
                $offerID=$validatedData['offerID'];
                unset($validatedData['offerID']);
                $offerdetail = DB::table('offers_meta')->where('id', $offerID)->first();
                $validatedData['rel_user_req_col_users']=$offerdetail ->rel_user_req_col_users;
            }
            if(array_key_exists('rel_created_by_col_users', $validatedData)){
                if($current_role!='admin'){ // auto setting created by to current user if not admin
                    $validatedData['rel_created_by_col_users']=$current_user_id;
                }else{
                    
                        if(is_array($validatedData['rel_created_by_col_users']) || is_object($validatedData['rel_created_by_col_users'])) {
                            $validatedData['rel_created_by_col_users'] = $validatedData['rel_created_by_col_users']['selected']['id'];
                        }
                }
            }
            $this->validate_collection($collectionHandle);
            // $collection = Collections::findOrFail($collectionId);
            // $collection = Collections::where('handle', $collectionHandle)->firstOrFail();
            $metaTableName = $this->collection->handle . '_meta';
            if (!Schema::hasTable($metaTableName)) {
                return response()->json(['error' => 'Meta table does not exist.'], 404);
            }
            $record = DB::table($metaTableName)->where('id', $id)->first();
            if (!$record) {
                return response()->json(['error' => 'Entry not found.'], 404);
            }
            // Handle file uploads
            $filePaths = $this->handleFileUploads($request);
            $validatedData = array_merge($validatedData, $filePaths);

            $updatedRows = DB::table($metaTableName)->where('id', $id)->update($validatedData);
            if ($updatedRows === 0) {
                return response()->json(['error' => 'No existing records are updated.'], 404);
            }
            // if(!empty($offerID)){
            //     $offerdata = [
            //         "OfferID" => (int)$offerID,
            //         "ID" => 1,
            //         "url"=>$validatedData['text_flow_url_req'],
            //         "template_handle"=>$validatedData['rel_templates_req_col_collections'],
            //     ];
            //     $this->createOffer($offerdata);
            //     $offercreated=true;
            //     $message="Thank you for submitting the request. Your offer will be available soon!";
            // }
            // if($collectionHandle=='offers'){
            //     $offerID=$id;
            // }
            return response()->json(['message' => $message, 'collectionHandle'=>$collectionHandle,'validatedData'=>$validatedData], 200);
            // return response()->json(['message' => $message, 'offerID'=> $offerID, 'offercreated'=>$offercreated], 200);
        } catch (QueryException $qe) {
            return response()->json(['error' => 'Database error: ' . $qe->getMessage()], 500);
        } catch (\Exception $e) {
            return response()->json(['error' => 'An unexpected error occurred: ' . $e->getMessage()], 500);
        }
    }

    /**
 * Handle file uploads and return an array of file paths.
 *
 * @param \Illuminate\Http\Request $request
 * @param string $directory
 * @return array
 */
    private function handleFileUploads(Request $request, $directory = 'uploads')
    {
        $filePaths = [];

        foreach ($request->allFiles() as $fieldName => $file) {
            if ($file->isValid()) {
                $originalName = $file->getClientOriginalName();
                $uniqueName = time() . '_' . $originalName;
                $path = $file->storeAs($directory, $uniqueName, 'public'); // Store in 'public/uploads'
                $filePaths[$fieldName] = $path; // Save file path for database insertion
            }
        }

        return $filePaths;
    }

    public function destroy($collectionHandle, $id)
    {
        // $collectionHandle = Str::slug($collectionHandle, '_');
        try {
            $this->validate_collection($collectionHandle);
            // $collection = Collections::findOrFail($collectionId);
            // $collection = Collections::where('handle', $this->collectionHandle)->firstOrFail();
            $metaTableName = $this->collection->handle . '_meta';

            if (!Schema::hasTable($metaTableName)) {
                return response()->json(['error' => 'Meta table does not exist.'], 404);
            }
            // Find the record in the meta table
            $record = DB::table($metaTableName)->where('id', $id)->first();
            if($record){
                DB::table($metaTableName)->where('id', $id)->delete();
                return response()->json(['message' => 'Record deleted successfully!'], 200);
            }else{
                return response()->json(['message' => 'No Record Found!'], 200);
            }
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }


    public function handleWebhook(Request $request ,$offerId)
    {
        try {
            // Validate the request
            $validatedData = $request->validate([
                'pdf' => 'required|file|', // Allow only PDFs, max 2MB
            ]); 
            $offerID = $offerId;
            $collectionHandle = 'offers';
            $metaTableName = $collectionHandle . '_meta';
            // Check if the meta table exists
            if (!Schema::hasTable($metaTableName)) {
                return response()->json(['error' => 'Meta table does not exist.'], 404);
            }
            // Fetch the existing record
            $record = DB::table($metaTableName)->where('id', $offerID)->first();
            // dd($record );
            if (!$record) {
                return response()->json(['error' => 'Entry not found.'], 404);
            }
            // Define storage path for the PDF file
            $uploadPath = public_path('assets/offers/');
            // Ensure the directory exists
            if (!File::exists($uploadPath)) {
                File::makeDirectory($uploadPath, 0755, true, true);
            }
            // Store the uploaded PDF file
            if ($request->hasFile('pdf')) {
                $file = $request->file('pdf');
                $originalName = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME); // Get original filename without extension
                $originalName = Str::slug($originalName, '_'); // Convert spaces to underscores
                $filename = 'offer_' . $originalName . '_' . time() . '.' . $file->getClientOriginalExtension();
                $file->move($uploadPath, $filename);
                $pdfPath = 'assets/offers/' . $filename;
            }
            // Prepare data for update (excluding unnecessary fields)
            $updateData = [
                'file_pdf' => $pdfPath ?? null, 
                'updated_at' => now(),
                'text_status'=>'Ready'
            ];
            // Update the record
            $updatedRows = DB::table($metaTableName)->where('id', $offerID)->update($updateData);
            if ($updatedRows === 0) {
                return response()->json(['error' => 'No existing records were updated.'], 404);
            }
            // Optionally create offer
            return response()->json([
                'message' => 'Offer updated successfully',
                'offerID' => $offerID,
                'offerCreated' => true, // Adjust as needed
            ], 200);
        } catch (QueryException $qe) {
            return response()->json(['error' => 'Database error: ' . $qe->getMessage()], 500);
        } catch (\Exception $e) {
            return response()->json(['error' => 'An unexpected error occurred: ' . $e->getMessage()], 500);
        }
    }
    
    public function update_offer_status(Request $request)
    {
        try {
            // Validate request
            $validatedData = $request->validate([
                'status' => 'required|string',
                'ID' => 'required|numeric'
            ]);
    
            $offerId = $validatedData['ID'];
            $collectionHandle = 'offers';
            $metaTableName = $collectionHandle . '_meta';
            // Check if the meta table exists
            if (!Schema::hasTable($metaTableName)) {
                return response()->json(['error' => 'Meta table does not exist.'], 404);
            }
            // Fetch the existing record
            $record = DB::table($metaTableName)->where('id', $offerId)->first();
            // dd($record );
            if (!$record) {
                return response()->json(['error' => 'Entry not found.'], 404);
            }
    
            // Update only the status field
            $updateData = [
                'text_status' => $validatedData['status'],
                'updated_at' => now()
            ];
            
            // Update the record
            $updatedRows = DB::table($metaTableName)->where('id', $offerId)->update($updateData);
            if ($updatedRows === 0) {
                return response()->json(['error' => 'Failed to update offer status.'], 500);
            }
    
            if ($updatedRows === 0) {
                return response()->json(['error' => 'Failed to update offer status.'], 500);
            }
    
            return response()->json([
                'message' => 'Offer status updated successfully',
                'offerID' => $offerId,
                'status' => $validatedData['status']
            ], 200);
    
        } catch (QueryException $qe) {
            return response()->json(['error' => 'Database error: ' . $qe->getMessage()], 500);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Unexpected error: ' . $e->getMessage()], 500);
        }
    }

    

}

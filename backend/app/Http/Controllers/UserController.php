<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Facades\Schema;
use Exception;
use Illuminate\Support\Str; // For slug generation
use App\Traits\GetRelationalFieldDetail;


class UserController extends Controller
{
    use GetRelationalFieldDetail; // Use the trait
    public $tables=['roles', 'meta'];
    /**
     * Get all users.
     */
    // use Illuminate\Support\Facades\Schema;

function flattenArrayWithPrefix($data, $tableName) {
    // Get column types for the base table
    $columns = Schema::getColumnListing($tableName); // Get all column names
    $columnTypes = [];
    foreach ($columns as $column) {
        $columnTypes[$column] = Schema::getColumnType($tableName, $column); // Get type for each column
    }

    foreach ($data as &$user) {
        foreach ($user as $key => $value) {
            // Check if the value is an array (e.g., relationships like roles, meta, etc.)
            if (is_array($value)) {
                if (!empty($value)) {
                    // Flatten dynamic relationship arrays
                    if (isset($value[0]) && is_array($value[0])) {
                        // If it's an array of items (e.g., roles), merge specific fields
                        $flattenedData = [];
                        foreach ($value as $index => $item) {
                            $flattenedData["{$key}_id"] = implode(',', array_column($value, 'id'));
                            $flattenedData["{$key}_name"] = implode(',', array_column($value, 'name'));
                        }
                        $user = array_merge($user, $flattenedData);
                    } else {
                        // Otherwise, treat it as a single object (e.g., meta)
                        foreach ($value as $subKey => $subValue) {
                            $user["{$key}_{$subKey}"] = $subValue;
                            // Add column type if it doesn't exist
                            if (!isset($columnTypes["{$key}_{$subKey}"])) {
                                $columnTypes["{$key}_{$subKey}"] = gettype($subValue); // Use PHP's gettype as fallback
                            }
                        }
                    }
                }
                unset($user[$key]); // Remove the original key
            }
        }
    }

    // Extract the keys (columns) from the data array
    $dataColumns = array_keys($data[0] ?? []);

    // Combine column names with their types
    $columnsWithTypes = [];
    foreach ($dataColumns as $columnName) {
        $columnsWithTypes[$columnName] = $columnTypes[$columnName] ?? 'unknown';
    }

    return [
        'data' => $data,
        'columns' => $columnsWithTypes, // Return columns with types
    ];
}

     public function index(Request $request)
    {
        try {
            
            // Fetch users based on role and/or employee_assigned_id from meta
            $query = User::with($this->tables)->orderBy('id', 'desc'); // Load relationships    
            // return response()->json([
            //     'data' => $query ,
            // ], 200);
            // Filter by role if provided
            
            if ($request->has('role')) {
                $selectedrole=$request->role;
            }else if(!empty(($request->current_role)) && $request->current_role=='admin'){
                $selectedrole="";
            }else{ // for employee case
                $selectedrole='customer';
                // in this case we need to filter the employee_assigned_id from meta
                // $query->whereHas('meta', function ($query) use ($request) {
                //     $query->where('rel_employee_assigned_col_users', $request->current_user_id);
                // });
               
            }
            if(!empty($selectedrole)){
                $query->whereHas('roles', function ($query) use ($request, $selectedrole) {
                    $query->where('name', $selectedrole); // Assuming 'name' is the role name
                });
                if($selectedrole=='customer'){
                    $query->whereHas('meta', function ($query) use ($request) {
                        $query->where('rel_employee_assigned_col_users', $request->current_user_id);
                    });
                }
            }
            // Add OR condition to fetch user by current_user_id
            // if ($request->has('current_user_id')) {
            //     $query->orWhere('id', $request->current_user_id);
            // }
            // If the user is an admin and wants to filter by employee_assigned
            if ($request->has('employee_assigned')) {
                $query->whereHas('meta', function ($query) use ($request) {
                    $query->where('rel_employee_assigned_col_users', $request->employee_assigned);
                });
            }
            // return response()->json([
            //     'data' => $query->toSql(),
            // ], 200);
            // $tables = ['users', 'user_roles', 'user_meta']; // Add your table names here
            // $excludeColumns = ['created_at', 'updated_at', 'role_id','last_login', 'remember_token','password', 'email_verified_at', 'settings']; // Specify columns to exclude
            // $allColumns = [];

            // foreach ($tables as $table) {
            //     if (Schema::hasTable($table)) {
            //         $columns = Schema::getColumnListing($table);
            //         $filteredColumns = array_diff($columns, $excludeColumns);
            //         $allColumns = array_merge($allColumns, $filteredColumns); // Merge into the main array
            //     }
            // }

            // // Remove duplicates, if any
            // $allColumns = array_unique($allColumns);
            // $allColumns = array_values($allColumns);
            $dataset = $this->flattenArrayWithPrefix($query->get()->toArray(),'users'); // Get users based on the above conditions
            // Process relational fields in metaData
            $relationalMetaData = [];
            // Process relational fields in metaData
            foreach ($dataset['data'] as &$entry) { 
                foreach ($entry as $field => $value) {  
                    // Check if the field matches the "rel_*_col_*" pattern
                    if (Str::startsWith($field, 'meta_rel_') && Str::contains($field, '_col_') ) {
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
                        } else {
                            $relatedMetaTable = $relatedReference; // Use the extracted value as the table name
                        }
                        // Get display value
                        $displayData = $this->getRelationalFieldDetail($relatedMetaTable, $value, $fieldParts);
                        // Replace ID with both ID and display value
                        $entry[$field.'_relationalDetails'] = $displayData;
                    }
                }
                // dd($relatedMeta );
            } 
            // dd($relatedMeta);    
            return response()->json([
                'data' => $dataset['data'],
                'columns' => $dataset['columns'], // even when the data is empty, the columns should be there, fix this scenario   in chat          
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'An error occurred while fetching users.',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    /**
     * Get details of a single user.
     */
    public function show($id = null)
    {
        
        try {
            if (empty($id)) {
                $id = Auth::id();
            }            
            // Ensure the user is authenticated and authorized to view the requested user
            $user = User::with(['roles', 'meta'])->where('id', $id) ->get();
            $dataset = $this->flattenArrayWithPrefix($user->toArray(),'users'); 
            
            if (!$user) {
                return response()->json([
                    'message' => 'User not found'
                ], 404);
            }

            return response()->json([
                'data' => $dataset['data'],
                'columns' => $dataset['columns'],
            ], 200);
        } catch (ModelNotFoundException $e) {
            return response()->json([
                'message' => 'User not found',
                'error' => $e->getMessage()
            ], 404);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'An error occurred while fetching the user.',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    /**
     * Delete a user.
     */
    public function destroy($id)
    {
        try {
            $user = User::with(['roles', 'meta'])->find($id);
    
            if (!$user) {
                return response()->json([
                    'message' => 'User not found'
                ], 404);
            }
    
            // Check if the logged-in user is an admin
            // if (!Auth::user()->hasRole('admin')) {
            //     return response()->json([
            //         'message' => 'You are not authorized to delete users'
            //     ], 403);
            // }
    
            // Check if the logged-in user is trying to delete themselves
            if ($user->id === Auth::id()) {
                return response()->json([
                    'message' => 'You cannot delete your own account'
                ], 403);
            }
    
            // Delete roles and meta associated with the user
            $user->roles()->detach();  // Detach all roles from the user
            $user->meta()->delete();   // Delete the user's meta data
            $user->delete();
    
            return response()->json([
                'message' => 'User deleted successfully'
            ], 200);
        } catch (ModelNotFoundException $e) {
            return response()->json([
                'message' => 'User not found',
                'error' => $e->getMessage()
            ], 404);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'An error occurred while deleting the user.',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}

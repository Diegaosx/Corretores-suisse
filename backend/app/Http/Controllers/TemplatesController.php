<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Str; // For slug generation
use App\Models\Collections;
use App\Models\Templates;
use App\Models\TemplatesMeta;
use App\Models\User;
use Exception;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Database\QueryException;
use Illuminate\Support\Facades\Log;
use App\Traits\GetRelationalFieldDetail;
class TemplatesController extends Controller
{
    use GetRelationalFieldDetail; // Use the trait
    /**
     * Store a new collection and create its meta table dynamically.
     */
    public $collection;
    public $model;
    public $collectionHandle;
    public $id;
     public function validate_collection($id){
        $model=new Templates;
        $collection = $model::where('id', $id)->firstOrFail();
        $this->collection=$collection;
        $this->model=$model;
        $this->id=$id;
    }
    public function store(Request $request)
    {
        // Validate the request data
        $validatedData = $request->validate([
            'name' => 'required|string|unique:collections,name',
            'status' => 'nullable|string|in:published,draft',
        ]);
        DB::beginTransaction();
        try {
            // Generate a unique handle based on the name
            $handle = Str::slug($validatedData['name'], '_');
            // Ensure the handle is unique in the database
            if (Collections::where('handle', $handle)->exists()) {
                throw new Exception('A collection with this name and handle already exists.');
            }
            // Add the handle to the validated data
            $validatedData['handle'] = $handle;

            // Create the collection entry in the database
            $collection = Collections::create($validatedData);
            
            // Generate the meta table name
            $metaTableName = $handle . '_meta';
            // Commit the transaction for collection entry
            DB::commit();
            // Try to create the meta table
            try {
                Log::info('Creating meta table: ' . $metaTableName);
                Schema::create($metaTableName, function (Blueprint $table) use ($collection) {
                    $table->id();
                    $table->string('meta_title')->nullable();
                    $table->unsignedBigInteger('collection_id')->nullable();
                    $table->foreign('collection_id')->references('id')->on('collections')->onDelete('set null');
                    $table->timestamps();
                });
                Log::info('Meta table created successfully: ' . $metaTableName);
                // Optionally insert an initial record into the new meta table
                // DB::table($metaTableName)->insert([
                //     'collection_id' => $collection->id,
                //     'created_at' => now(),
                //     'updated_at' => now(),
                // ]);
                return response()->json([
                    'message' => 'Collection and meta table created successfully!',
                    'collection' => $collection,
                ], 201);
            } catch (Exception $e) {
                // Rollback meta table creation by deleting the collection entry
                $collection->delete();
                throw new Exception("Meta table creation failed. Collection entry rolled back.");
            }
        } catch (Exception $e) {
            // Rollback the transaction for collection entry
            DB::rollBack();
            return response()->json([
                'message' => 'Error creating collection or meta table.',
                'error' => $e->getMessage(),
            ], 500);
        }
    }




        /**
     * Show a collection and its meta data.
     */
    public function all_collection(Request $request)
    {
        try {
            // Retrieve all collections
            $collection = Collections::all();
            // Check if collections are found
            if ($collection->isEmpty()) {
                return response()->json([
                    'message' => 'No collection found.',
                ], 404);  // Return a 404 error with the "No collection found" message
            }  
            // If collections are found, return them
            return response()->json([
                'collection' => $collection,
            ]);
        } catch (ModelNotFoundException $e) {
            // Handle case where the collection is not found
            return response()->json([
                'message' => 'Collection not found.',
                'error' => $e->getMessage(),
            ], 404);
        } catch (Exception $e) {
            // Catch any unexpected errors
            return response()->json([
                'message' => 'Error retrieving collection data.',
                'error' => $e->getMessage(),
            ], 500);
        }
    }
    

    
    /**
     * Show a collection and its meta data.
     */
    public function show($collectionHandle)
    {
         $collectionHandle = Str::slug($collectionHandle, '_');
        try {      
            // $collection = Collections::findOrFail($id);
            $collection = Collections::where('handle', $collectionHandle)->firstOrFail();
            // Get meta table data
            $metaTableName = $collection->handle . '_meta';
            // Initialize variables
            $metaData = [];
            $metaColumns = [];
            $metaData = Schema::hasTable($metaTableName)
                ? \DB::table($metaTableName)->get()
                : [];
            // Process relational fields in metaData
            foreach ($metaData as &$entry) {   
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
                // dd($relatedMeta );
            } 
            // Fetch column names from the meta table
            $metaColumns = Schema::getColumnListing($metaTableName);

            return response()->json([
                'columns' => $metaColumns,
                'data' => $metaData,
            ]);

        } catch (ModelNotFoundException $e) {
            // Handle case where the collection is not found
            return response()->json([
                'message' => 'Collection not found.',
                'error' => $e->getMessage(),
            ], 404);
        } catch (Exception $e) {
            // Catch any unexpected errors
            return response()->json([
                'message' => 'Error retrieving collection data.',
                'error' => $e->getMessage(),
            ], 500);
        }
    }

    private function getRelationalFieldDetail_bk($tableName, $id)
    {
        // Default return structure
        $GetData = ['id' => $id, 'display' => $id]; // Default 'display' is the ID
        if($tableName == 'users'){
            $tableName = $tableName ;
        }else{
            $tableName = $tableName . '_meta';
        }
        if (!Schema::hasTable($tableName)) {
            \Log::info("Table does not exist: $tableName");
            return $GetData;
        }    
        // Fetch the related entry
        $result = \DB::table($tableName)->where('id', $id)->first(); 
        if ($result) {
            $data = (array) $result; // Convert to array
            \Log::info("Data found: ", $data);
            // Fields to prioritize as display fields
            $displayFields = ['name', 'title', 'text_name', 'text_title'];
            // Find the first available display field value
            foreach ($displayFields as $field) {
                if (isset($data[$field]) && !empty($data[$field])) {
                    $GetData['display'] = $data[$field];
                    break;
                }
            }
            // Merge all fields into the return structure
            $GetData = array_merge($GetData);
            // dd($GetData);
        } else {
            \Log::info("No data found for ID: $id in table: $tableName");
        }   
        return $GetData;
    }   
    /**
     * Update an existing collection.
     */
    public function update(Request $request, $collectionHandle)
    {
        $collectionHandle = Str::slug($collectionHandle, '_');
        // Validate the request data
        $validatedData = $request->validate([
            'name' => 'required|string|unique:collections,name,' . $collectionHandle, // Make sure the name is unique, excluding the current collection
            // 'type' => 'required|string',
            'status' => 'nullable|string|in:published,draft',
        ]);

        try {
            // Find the collection by ID
            // $collection = Collections::findOrFail($id);
            // Find the collection by handle
            $collection = Collections::where('handle', $collectionHandle)->firstOrFail();
            // Store the original handle, as it cannot be updated
            $originalHandle = $collection->handle;
            // Ensure the handle remains immutable (it should not be updated)
            $validatedData['handle'] = $originalHandle;
            // Update the collection data
            $collection->update($validatedData);
            return response()->json([
                'message' => 'Collection updated successfully!',
                'collection' => $collection,
            ]);

        } catch (ModelNotFoundException $e) {
            // Handle case where the collection is not found
            return response()->json([
                'message' => 'Collection not found.',
                'error' => $e->getMessage(),
            ], 404);
        } catch (QueryException $e) {
            // Handle database-specific query exceptions (e.g., constraint violations)
            return response()->json([
                'message' => 'Database error while updating collection.',
                'error' => $e->getMessage(),
            ], 500);
        } catch (Exception $e) {
            // Catch any unexpected errors
            return response()->json([
                'message' => 'Error updating collection.',
                'error' => $e->getMessage(),
            ], 500);
        }
    }

    /**
     * Delete an existing collection and its meta table.
     */
    public function destroy($collectionHandle)
    {
        $collectionHandle = Str::slug($collectionHandle, '_');
        try {
            // Find the collection by ID
            // $collection = Collections::findOrFail($id);
            $collection = Collections::where('handle', $collectionHandle)->firstOrFail();
            // Get the associated meta table name
            $metaTableName = $collection->handle . '_meta';
            // Check if the meta table exists, then drop it
            if (Schema::hasTable($metaTableName)) {
                // Drop the meta table
                Schema::dropIfExists($metaTableName);
            } else {
                return response()->json([
                    'message' => 'Meta table for this collection does not exist.',
                ], 404);
            }
            // Delete the collection
            $collection->delete();
            return response()->json([
                'message' => 'Collection and associated meta table deleted successfully!',
            ]);
        } catch (ModelNotFoundException $e) {
            // Handle case where the collection is not found
            return response()->json([
                'message' => 'Collection not found.',
                'error' => $e->getMessage(),
            ], 404);
        } catch (QueryException $e) {
            // Handle database-specific query exceptions (e.g., constraint violations)
            return response()->json([
                'message' => 'Database error while deleting collection or meta table.',
                'error' => $e->getMessage(),
            ], 500);
        } catch (Exception $e) {
            // Catch any unexpected errors
            return response()->json([
                'message' => 'Error deleting collection or meta table.',
                'error' => $e->getMessage(),
            ], 500);
        }
    }
    public function template_meta_exist($template_id){
        $model=new TemplatesMeta();
        $meta = $model::where('template_id', $template_id)->firstOrFail();
        return $meta;

    }
    public function deleteField(Request $request, $collectionHandle)
    {
        $collectionHandle = Str::slug($collectionHandle, '_');
        $validatedData = $request->validate([
            'field_name' => 'required|string',
        ]);
    
        try {
            $this->validate_collection($collectionHandle);
            // $collection = Collections::findOrFail($collectionId);
            // if($collectionHandle === 'user'){
            //     $metaTableName = 'user_meta';  
            // }else{
                // $collection = Collections::where('handle', $collectionHandle)->firstOrFail();
            $metaTableName =  'templates_meta';
            // }
            // Check if the meta table exists
            if (!Schema::hasTable($metaTableName)) {
                return response()->json(['error' => 'Meta table does not exist.'], 404);
            }
            // Check if the column exists
            if (!Schema::hasColumn($metaTableName, $validatedData['field_name'])) {
                return response()->json(['error' => 'Field does not exist in the meta table.'], 400);
            }
            $columnName = $validatedData['field_name'];  
            // Check if the column has a foreign key constraint
            $foreignKeyName = $this->getForeignKeyName($metaTableName, $columnName);  
            if ($foreignKeyName) {
                // Drop the foreign key constraint
                Schema::table($metaTableName, function (Blueprint $table) use ($foreignKeyName) {
                    $table->dropForeign($foreignKeyName);
                });
            }   
            // Drop the column
            Schema::table($metaTableName, function (Blueprint $table) use ($columnName) {
                $table->dropColumn($columnName);
            }); 
            return response()->json(['message' => 'Field deleted successfully!'], 200);
        } catch (ModelNotFoundException $e) {
            return response()->json(['error' => 'Collection not found.'], 404);
        } catch (\Exception $e) {
            return response()->json(['error' => 'An error occurred: ' . $e->getMessage()], 500);
        }
    }

    private function getForeignKeyName($tableName, $columnName)
    {
        $foreignKeys = DB::select("
            SELECT CONSTRAINT_NAME 
            FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE 
            WHERE TABLE_NAME = ? 
            AND COLUMN_NAME = ? 
            AND TABLE_SCHEMA = DATABASE()
        ", [$tableName, $columnName]);

        return $foreignKeys[0]->CONSTRAINT_NAME ?? null;
    }

    

    public function manageField(Request $request, $collectionHandle)
    {
        // $collectionHandle = Str::slug($collectionHandle, '_');
        $validatedData = $this->validateFieldData($request);
        try {
            $metaTableName = null;
            $this->validate_collection($collectionHandle);
            // if ( $collectionHandle  === 'user') {
            //     $metaTableName = 'user_meta'; // Define the meta table for user    
            // } else {
                // $collection = Collections::findOrFail($collectionId);
            $metaTableName = $this->collectionHandle . '_meta';
            // }
            // Check if the meta table exists
            if (!Schema::hasTable($metaTableName)) {
                return $this->errorResponse('Meta table does not exist.', 404);
            } 
            // Determine whether we are adding or updating a field
            return $this->handleFieldAction($validatedData, $metaTableName, $request);   
        } catch (ModelNotFoundException $e) {
            return $this->errorResponse('Collection not found.', 404);
        } catch (\Exception $e) {
            return $this->errorResponse('An unexpected error occurred: ' . $e->getMessage(), 500);
        }
    }
    
    private function validateFieldData(Request $request)
    {
        $rules = [
            'status' => 'nullable',
            'link_type' => 'nullable|string|in:user,collection',
            'collection_id' => 'nullable|integer|exists:collections,id', // Validate only if linking to a collection
        ];
        // Field-specific validation rules based on action (create or update)
        if ($request->has('old_field_name')) {
            $rules = array_merge($rules, [
                'old_field_name' => 'required|string',
                'new_field_name' => 'required|string',
                'field_type' => 'nullable|string|in:text,textarea,file,date,status,boolean,enum,relational',
            ]);
        } else {
            $rules = array_merge($rules, [
                'field_name' => 'required|string',
                'field_type' => 'required|string|in:text,textarea,file,date,status,boolean,enum,relational',
            ]);
        }
        return $request->validate($rules);
    }
    
    private function handleFieldAction($validatedData, $metaTableName, Request $request)
    {
        if ($request->has('old_field_name')) {
            // Update field scenario
            return $this->updateField($validatedData, $metaTableName);
        } else {
            // Add new field scenario
            return $this->addField($validatedData, $metaTableName);
        }
    }
    
    private function addField($validatedData, $template_id)
    {
        $fieldName = Str::slug($validatedData['field_name'], '_');       
        $fieldName = $this->getPrefixedFieldName($validatedData['field_type'], $fieldName);
        // dd($fieldName);
        // Check if the field already exists in the meta table
        if ($this->template_meta_exist($fieldName, $template_id)) {
            return $this->errorResponse('Field already exists in the meta table.', 400);
        }
    
        try {
            Schema::table('templates', function (Blueprint $table) use ($validatedData, $fieldName) {
                if ($validatedData['link_type'] ?? null) {
                    $this->processLinkType($validatedData, $table, $fieldName);
                } else {
                    $this->addFieldType($validatedData['field_type'], $table, $fieldName);
                }
            });
            return response()->json(['message' => 'Field added successfully!'], 200);
        } catch (\Exception $e) {
            return $this->errorResponse("An error occurred: " . $e->getMessage(), 500);
        }
    }
    

    private function getPrefixedFieldName($fieldType, $fieldName)
    {
        // Add prefix based on the field type
        if ($fieldType == 'relational' || $fieldType == '') {
            return $fieldName; 
        } else {
            return $fieldType . '_' . $fieldName;
        }
        // Do not add prefix for relational fields
    }
    

    private function updateField($validatedData, $metaTableName)
    {
        $newFieldName = Str::slug($validatedData['new_field_name'], '_');
        $oldFieldName = $validatedData['old_field_name'];
        $newFieldName = $this->getPrefixedFieldName($validatedData['field_type'], $newFieldName);    
    
        // Check if the old field exists
        if (!Schema::hasColumn($metaTableName, $oldFieldName)) {
            return $this->errorResponse('Field does not exist in the meta table.', 400);
        }    
    
        // Prevent renaming to an already existing column
        if ($oldFieldName !== $newFieldName && Schema::hasColumn($metaTableName, $newFieldName)) {
            return $this->errorResponse('Field with the new name already exists in the meta table.', 400);
        }
    
        try {
            // Handle link type (e.g., collection)
            if (!empty($validatedData['link_type']) && $validatedData['link_type'] === 'collection') {
                Schema::table($metaTableName, function (Blueprint $table) use ($validatedData, $newFieldName,$oldFieldName) {
                // Ensure old foreign key is dropped before adding a new one
                $this->handleForeignKeyChanges($validatedData, $table, $oldFieldName, $newFieldName);
                // $this->dropOldForeignKey($table, $oldFieldName);  
                // // Add the new foreign key
                // $this->processLinkType($validatedData, $table, $newFieldName);
                });
            }else{
                // Start schema update
                Schema::table($metaTableName, function (Blueprint $table) use ($validatedData, $newFieldName, $oldFieldName) {
                    // Rename the field if the name has changed
                    if ($oldFieldName !== $newFieldName) {
                        $table->renameColumn($oldFieldName, $newFieldName);
                    }
                });
            }
            return response()->json(['message' => 'Field updated successfully!'], 200);
        } catch (\Exception $e) {
            return $this->errorResponse("An error occurred: " . $e->getMessage(), 500);
        }
    }
    
    private function processLinkType($validatedData, $table, $fieldName)
    {
        $linkType = $validatedData['link_type'] ?? null;
    
        if ($linkType === 'user') {
            $fieldName = 'rel_' . $fieldName . '_col_users';
            $this->addForeignKey($table, $fieldName, 'users', 'id');
        } elseif ($linkType === 'collection' && isset($validatedData['collection_id'])) {
            $relatedCollection = Collections::findOrFail($validatedData['collection_id']);
            $relatedTable = 'teemplates_meta';
            $fieldName = 'rel_' . $fieldName . '_col_templates' ;
            // $this->addForeignKey($table, $fieldName, $relatedTable, 'id');
        } else {
            throw new \Exception('Invalid link_type or missing collection_id for collection linkage.');
        }
    }
    
    private function addForeignKey($table, $fieldName, $relatedTable, $relatedKey)
    {
        $table->unsignedBigInteger($fieldName)->nullable();
        $table->foreign($fieldName)->references($relatedKey)->on($relatedTable)->onDelete('set null');
    }
    
    private function addFieldType($fieldType, $table, $fieldName)
    {
        $fieldTypes = $this->getFieldTypes();
    
        if (isset($fieldTypes[$fieldType])) {
            $fieldTypes[$fieldType]($table, $fieldName);
        } else {
            throw new \Exception('Invalid field type provided.');
        }
    }
    
    private function handleForeignKeyChanges($validatedData, $table, $oldFieldName, $newFieldName)
    {
        $newLinkType = $validatedData['link_type'] ?? null; 
    
        if ($newLinkType) {
            $this->dropOldForeignKey($table, $oldFieldName, $validatedData, $newLinkType);
            $this->processLinkType($validatedData, $table, $newFieldName);
        } else {
            $this->addFieldType($validatedData['field_type'], $table, $newFieldName);
        }
    }
    
    private function dropOldForeignKey($table, $oldFieldName, $validatedData, $newLinkType)
    {
        if ($newLinkType === 'collection') {
            $relatedCollection = Collections::findOrFail($validatedData['collection_id']);
            $relatedTable = $relatedCollection->handle . '_meta';
            $table->dropForeign([$oldFieldName]);
            $table->dropColumn($oldFieldName);
        }
    }
    
    private function errorResponse($message, $statusCode)
    {
        return response()->json(['error' => $message], $statusCode);
    }
    
    private function getFieldTypes()
    {
        return [
            'text' => fn ($table, $fieldName) => $table->string($fieldName)->nullable(),
            'textarea' => fn ($table, $fieldName) => $table->longtext($fieldName)->nullable(),
            'file' => fn ($table, $fieldName) => $table->string($fieldName)->nullable(),
            'date' => fn ($table, $fieldName) => $table->date($fieldName)->nullable(),
            'status' => fn ($table, $fieldName) => $table->enum($fieldName, ['publish', 'draft'])->nullable(),
            'boolean' => fn ($table, $fieldName) => $table->boolean($fieldName)->nullable(),
            'relational' => fn ($table, $fieldName) => $table->unsignedBigInteger($fieldName)->nullable(), // relational fields handled like other fields
            'enum' => fn ($table, $fieldName) => $table->enum($fieldName, ['Active', 'Inactive'])->nullable()->index(),
        ];
    }
    
    
    

}

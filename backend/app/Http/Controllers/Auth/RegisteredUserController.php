<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\Role;
use App\Models\User;
use Illuminate\Auth\Events\Registered;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rules;
use App\Traits\DynamicValidationRules;

class RegisteredUserController extends Controller
{
    use DynamicValidationRules;
    /**
     * Handle user creation and updates dynamically.
     */
    public function store(Request $request, $id = null)
    {
        // Dynamically collect all request fields
        $inputData = $request->all();
        if(!empty($inputData['meta_text_first_name']) && !empty($inputData['meta_text_last_name']) ){
            $inputData['name']=$inputData['meta_text_first_name']." ".$inputData['meta_text_last_name'];
        }
        if(empty($inputData['role_id']) ){
            $inputData['role_id']=3;
        }
        $maininput=$inputData;
        $tempdata=[];
        foreach($inputData as $key=>$value){
            if (str_contains($key, 'meta_')) { 
                $tempdata[$key]=$maininput[$key];
                unset($maininput[$key]);
            }
        }
        $id=$request->id;
        // Initialize rules array
        $rules = [
            'name' => [ 'string', 'max:255'],
            'email' => [$id ? 'nullable' : 'required', 'string', 'email', 'max:255', 'unique:users,email,' . $id],
            'password' => [$id ? 'nullable' : Rules\Password::defaults()],
            'role' => ['nullable', 'exists:roles,name'], 
            
        ];

        // Validate input data using the trait
        $validatedData = $this->validateData($maininput, $rules);
        array_merge($validatedData, $tempdata);
        // Begin database transaction
        DB::beginTransaction();
    
        try {
            $flipkeys=['name', 'email'];
            if(!empty($validatedData['password'])){
                array_push($flipkeys, 'password');
            }
            if ($id) {
                // Update existing user
                $user = User::findOrFail($id);
                
                $userData = array_intersect_key($validatedData, array_flip($flipkeys));
                $user->update($userData);    
                // Update password if provided
                if (!empty($validatedData['password'])) {
                    $user->update(['password' => Hash::make($validatedData['password'])]);
                }
            } else {
                // Create new user
                $userData = array_intersect_key($validatedData, array_flip($flipkeys));
                $userData['password'] = Hash::make($userData['password']);
                $user = User::create($userData);
            }
    
            // Dynamically handle role assignment
            if (!empty($validatedData['roles_id'])) {
                // $role = Role::where('name', $validatedData['roles_name'])->first();
                // if ($role) {
                    $user->roles()->sync([$validatedData['roles_id']]);
                // }
            }
    
            // Dynamically handle metadata
            $tempdata=[];
            foreach($inputData as $key=>$value){
                $updated_key=str_replace('meta_', '', $key);
                $tempdata[$updated_key]=$value;
            }
            $inputData=$tempdata;

            $metadata = array_diff_key($inputData, array_flip(['name', 'email', 'password', 'role']));
            if (!empty($metadata)) {
                // Update or create the user's metadata
                $userMeta = $user->meta()->firstOrNew(['user_id' => $user->id]);
                $userMeta->updateAttributes($metadata);
            }
    
            // Trigger Registered event for new users
            if (!$id) {
                event(new Registered($user));
            }
    
            // Commit transaction
            DB::commit();
    
            return response()->json([
                'message' => $id ? 'User updated successfully.' : 'User created successfully.',
                'user' => $user,
                '$metadata' => $metadata,
            ], 200);
        } catch (\Exception $e) {
            // Rollback transaction on error
            DB::rollBack();
    
            return response()->json([
                'message' => 'Failed to ' . ($id ? 'update' : 'create') . ' user. Changes rolled back.',
                'error' => $e->getMessage(),
            ], 500);
        }
    }
    
}

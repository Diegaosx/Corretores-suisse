<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Exception;

class SettingsController extends Controller
{
    /**
     * Get all settings as a key–value pair.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function index()
    {
        try {
            // Retrieve settings as an associative array: key => value
            $settings = Setting::all()->pluck('value', 'key');
            return response()->json([
                'settings' => $settings
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Error fetching settings',
                'error' => $e->getMessage()
            ], 500);
        }
    }
    /**
     * Create or update website settings.
     *
     * This method handles both single and multiple setting updates.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function createOrUpdate(Request $request)
    {
        try {
            // Define validation rules for known keys.
            $rules = [
                'company_name' => 'nullable|string|max:255',
                'logo'         => 'nullable', 
                'hidden_pages' => 'nullable',
                // Add more rules for additional settings as needed.
            ];
            // Validate request data .
            $validator = Validator::make($request->all(), $rules);
            if ($validator->fails()) {
                return response()->json([
                    'message' => 'Validation failed',
                    'errors'  => $validator->errors()
                ], 422);
            }
            $updatedFields = [];
            // Process each input key dynamically.
            foreach ($request->all() as $key => $value) {
                $key = Str::slug($key, '_'); // Convert key to slug format
                // Handle file upload for the 'logo' field if present in multipart/form-data.
                if ($key === 'logo' && $request->hasFile('logo')) {
                    // Delete the existing file if it exists.
                    $existingLogo = Setting::where('key', 'logo')->first();
                    if ($existingLogo && $existingLogo->value && Storage::disk('public')->exists($existingLogo->value)) {
                        Storage::disk('public')->delete($existingLogo->value);
                    }
                    // Upload the file using the helper method.
                    $logoPath = $this->uploadFile($request->file('logo'), 'logos');
                    // Update or create the logo setting.
                    Setting::updateOrCreate(
                        ['key' => 'logo'],
                        ['value' => $logoPath]
                    );
                    $updatedFields[] = 'logo';
                }
                // If hidden_pages is an array, store it as JSON.
                elseif ($key === 'hidden_pages' && is_array($value)) {
                    Setting::updateOrCreate(
                        ['key' => 'hidden_pages'],
                        ['value' => json_encode($value)]
                    );
                    $updatedFields[] = 'hidden_pages';
                }
                // For all other keys defined in our rules, update or create.
                elseif (array_key_exists($key, $rules)) {
                    Setting::updateOrCreate(
                        ['key' => $key],
                        ['value' => $value]
                    );
                    $updatedFields[] = $key;
                } else {
                    // **Handle new dynamic settings**
                    Setting::updateOrCreate(['key' => $key],
                    ['value' => $value]);
                    $updatedFields[] = $key;
                }
            }
            // Retrieve all settings after the update.
            $allSettings = Setting::all()->pluck('value', 'key');
            return response()->json([
                'message'        => !empty($updatedFields) ? 'Settings updated successfully.' : 'No changes detected.',
                'updated_fields' => $updatedFields,
                'settings'       => $allSettings
            ], 200);

        } catch (Exception $e) {
            return response()->json([
                'message' => 'Error updating settings',
                'error' => $e->getMessage()
            ], 500);
        }
    }
    /**
     * Delete a specific setting by its key.
     *
     * This method deletes the entire record from the database.
     *
     * @param string $key
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy($key)
    {
        try {
            $setting = Setting::where('key', $key)->first();
            if (!$setting) {
                return response()->json([
                    'message' => 'Setting not found.'
                ], 404);
            }
            // For fields like 'logo', also remove the file from storage if it exists.
            if ($key === 'logo' && $setting->value && Storage::disk('public')->exists($setting->value)) {
                Storage::disk('public')->delete($setting->value);
            }
            $setting->delete();
            return response()->json([
                'message' => 'Setting deleted successfully.'
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Error deleting setting',
                'error' => $e->getMessage()
            ], 500);
        }
    }
    /**
     * Handle file upload and generate a unique file name.
     *
     * This helper function takes a file, the destination directory, and returns
     * the path where the file was stored.
     *
     * @param \Illuminate\Http\UploadedFile $file
     * @param string $directory
     * @return string
     */
    private function uploadFile($file, $folder)
    {
        try {
            // Ensure the folder exists
            if (!Storage::disk('public')->exists($folder)) {
                Storage::disk('public')->makeDirectory($folder);
            }  
            // Get original filename and generate unique name
            $originalName = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME);
            $extension = $file->getClientOriginalExtension();
            $uniqueFileName = Str::slug($originalName) . '_' . time() . '.' . $extension;   
            // Store file in the public disk
            return $file->storeAs($folder, $uniqueFileName, 'public');
        } catch (Exception $e) {
            throw new Exception('Error uploading file: ' . $e->getMessage());
        }
    }
}

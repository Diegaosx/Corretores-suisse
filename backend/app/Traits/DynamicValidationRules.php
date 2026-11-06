<?php

namespace App\Traits;

use Illuminate\Support\Facades\Validator;

trait DynamicValidationRules
{




        /**
     * Validate the request data using dynamically generated rules.
     *
     * @param array $data
     * @param array $predefinedRules
     * @return array
     */
    public function validateData(array $data, array $predefinedRules = []): array
    {
        $rules = $this->generateValidationRules($data, $predefinedRules);

        $validator = Validator::make($data, $rules);

        // Throw validation exceptions if validation fails
        $validator->validate();

        return $validator->validated();
    }
    function slugify($string) {
        // Convert to lowercase
        $string = strtolower($string);
    
        // Replace spaces and dashes with underscores
        $string = str_replace([' ', '-'], '_', $string);
    
        // Remove all special characters except underscores
        $string = preg_replace('/[^a-z0-9_]/', '', $string);
    
        return $string;
    }

    /**
     * Generate dynamic validation rules based on the request data.
     *
     * @param array $data
     * @param array $predefinedRules
     * @return array
     */
    public function generateValidationRules(array $data, array $predefinedRules = []): array
    {
        $rules = $predefinedRules;

        foreach ($data as $key => $value) {
            // Skip already defined rules
            if (isset($rules[$key])) {
                continue;
            }
            // Dynamically assign validation rules based on field type
            if (is_numeric($value)) {
                $rules[$key] = ['nullable', 'integer'];
            } elseif (is_string($value)) {
                $rules[$key] = ['nullable', 'string'];
            } elseif (is_array($value)) {
                $rules[$key] = ['nullable', 'array'];
            } elseif (strtotime($value)) { // Check if the value is a valid date
                $rules[$key] = ['nullable', 'date'];
            } else {
                $rules[$key] = ['nullable']; // Fallback rule
            }
        }

        return $rules;
    }


}

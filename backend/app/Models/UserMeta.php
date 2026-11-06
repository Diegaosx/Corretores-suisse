<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Schema;

class UserMeta extends Model
{
    protected $fillable = ['user_id', 'last_login', 'settings'];
    // Cast the settings column as JSON
    protected $casts = [
        'settings' => 'array',
    ];
    protected $table = 'user_meta';
    /**
     * Update or create metadata attributes dynamically based on database columns.
     *
     * @param array $data
     * @return bool
     */
    public function updateAttributes(array $data)
    {
        // Get all column names from the database for this table
        $columns = Schema::getColumnListing($this->getTable());

        foreach ($data as $key => $value) {
            // Only update fields that exist in the database table
            if (in_array($key, $columns)) {
                $this->{$key} = $value;
            }
        }

        return $this->save();
    }
}

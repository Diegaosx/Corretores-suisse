<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TemplatesMeta extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'meta_key',
        'value',
        'is_required',
        'template_id'
    ];

        /**
     * Relationship with the `fields` table.
     */

    
}


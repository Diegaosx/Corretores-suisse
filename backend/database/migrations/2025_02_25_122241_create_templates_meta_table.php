<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('templates_meta', function (Blueprint $table) {
            $table->id();
            $table->string('meta_key');;
            $table->string('value');;
            $table->integer(column: 'is_required');;
            $table->integer('template_id');;
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('templates_meta');
    }
};

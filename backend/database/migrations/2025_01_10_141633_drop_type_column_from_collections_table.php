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
        Schema::table('collections', function (Blueprint $table) {
            // Make 'status' field nullable
            $table->string('status')->nullable()->change();

            // Drop the 'type' column
            $table->dropColumn('type');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('collections', function (Blueprint $table) {
            // Revert 'status' field to not nullable
            $table->string('status')->nullable(false)->change();

            // Add the 'type' column back
            $table->string('type');
        });
    }
};

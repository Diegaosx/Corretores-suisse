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
        Schema::table('user_meta', function (Blueprint $table) {
            $table->timestamp('last_login')->nullable(); // To store the last login time
            $table->json('settings')->nullable();        // To store JSON data
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('user_meta', function (Blueprint $table) {
            $table->dropColumn(['last_login', 'settings']);
        });
    }
};

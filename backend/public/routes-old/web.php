<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\AuthenticatedSessionController;
use App\Http\Controllers\SmsController;
Route::get('/', function () {
    return ['Laravel' => app()->version()];
});
Route::get('/login', [AuthenticatedSessionController::class, 'store']); // Only POST method
Route::get('/latest-otp', [SmsController::class, 'getLatestOtp']);
require __DIR__.'/auth.php';

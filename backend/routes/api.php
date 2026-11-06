<?php

// In routes/api.php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\RegisteredUserController;
use App\Http\Controllers\Auth\AuthenticatedSessionController;
use App\Http\Controllers\CollectionController;
use App\Http\Controllers\TemplatesController;
use App\Http\Controllers\CollectionMetaController;
use App\Http\Controllers\Auth\PasswordResetLinkController;
use App\Http\Controllers\Auth\NewPasswordController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\SettingsController;
use App\Http\Controllers\RolesController;
use App\Http\Controllers\SmsController;
use Illuminate\Support\Facades\Artisan;


Route::post('/incoming/sms', [SmsController::class, 'receiveSms']);
Route::get('/latest-otp', [SmsController::class, 'getLatestOtp']);

Route::get('/clear-cache', function () {
    Artisan::call('cache:clear');  // Clears application cache
    Artisan::call('config:clear'); // Clears config cache
    Artisan::call('route:clear');  // Clears route cache
    Artisan::call('view:clear');   // Clears compiled views

    return response()->json(['message' => 'Cache, config, route, and views cleared!']);
});
// Authentication routes
Route::post('/login', [AuthenticatedSessionController::class, 'store']); // Only POST method
Route::post('/logout', [AuthenticatedSessionController::class, 'destroy'])->middleware('auth:sanctum'); // Requires authentication
Route::post('/request-pass', [PasswordResetLinkController::class, 'store']);
Route::post('/reset-password', [NewPasswordController::class, 'store']);
// Endpoint to get settings
Route::get('/settings', [SettingsController::class, 'index']);
Route::middleware(['auth:sanctum'])->group(function () {

    // Endpoint to create or update settings
    Route::post('/settings', [SettingsController::class, 'createOrUpdate']);
    Route::delete('/settings/{key}', [SettingsController::class, 'destroy']);
    Route::get('/roles', [RolesController::class, 'index']);
    // Collection routes that require authentication
    Route::prefix('collections')->group(function () {
        // Only authenticated users can create a collection
        Route::get('/all', [CollectionController::class, 'all_collection']);
        Route::get('/all/templates', [CollectionController::class, 'all_collection']);
        // Only authenticated users can create a collection
        Route::post('/create', [CollectionController::class, 'store']);   
        // Fetch Collection - Public route or you can protect it
        Route::get('/show/{collectionHandle}', [CollectionController::class, 'show']);   
        // Update Collection - Only authenticated users can edit collections
        Route::put('/edit/{collectionHandle}', [CollectionController::class, 'update']);   
        // Delete Collection - Only authenticated users can delete collections
        Route::delete('/delete/{collectionHandle}', [CollectionController::class, 'destroy']);
        // Route::post('/templates/add-field', action: [TemplatesController::class, 'manageField']);      
        // Add field to a collection - Only authenticated users
        Route::post('/{collectionHandle}/add-field', [CollectionController::class, 'manageField']);      
        // Update field of a collection - Only authenticated users
        Route::put('/{collectionHandle}/fields/edit', [CollectionController::class, 'manageField']);      
        // Delete field from a collection - Only authenticated users
        Route::delete('/{collectionHandle}/fields/delete', [CollectionController::class, 'deleteField']);

        // get only the column from the collection meta table
        Route::get('/{collectionHandle}/get-fields', [CollectionMetaController::class, 'getFields']);
        // get the detail of single entry
        Route::get('/{collectionHandle}/entry-detail/{id}', [CollectionMetaController::class, 'fetch_entry_detail']);
        // create new entry in collection meta table
        Route::post('/{collectionHandle}/entry/create', [CollectionMetaController::class, 'create_entry']);
        // update entry in collection meta table
        Route::put('/{collectionHandle}/entry-update/{id}', [CollectionMetaController::class, 'update']);
        // delete entry from collection meta table
        Route::delete('/{collectionHandle}/entry-delete/{id}', [CollectionMetaController::class, 'destroy']); 
    });
    Route::prefix('user')->group(function () {
        Route::get('/reports/all', [CollectionController::class, 'reports']); 
        // create new user
        Route::post('/register', [RegisteredUserController::class, 'store']);
        // Get all users
        Route::get('/all', [UserController::class, 'index']);
        // Get a single user
        Route::get('detail/{id}', [UserController::class, 'show']);
        Route::get('detail', [UserController::class, 'show']);
        // Update User Profile
        Route::post('edit/{id}', [RegisteredUserController::class, 'store']);    
        // Delete a user
        Route::delete('delete/{id}', [UserController::class, 'destroy']);
    });    
});

Route::post('/webhook/offer-update/{offerId}', [CollectionMetaController::class, 'handleWebhook']);
// endpoint to update the status of offer
Route::post('/webhook/offer-status-update', [CollectionMetaController::class, 'update_offer_status']);
//  // Route to show the form for adding a new field to a collection (if it's public)
//  Route::get('/{collectionId}/add-field', [CollectionController::class, 'showForm'])->name('field.addForm');
//  // Route to handle form submission for adding a new field (if it's public)
//  Route::post('/{collectionId}/add-field', [CollectionController::class, 'addField'])->name('field.add');



<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\Auth\LoginRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;


class AuthenticatedSessionController extends Controller
{
    /**
     * Handle an incoming authentication request (Login).
     */
    public function store(LoginRequest $request)
    {
        try {
            // Authenticate the user
            $request->authenticate();
            $user = $request->user();
            $userwithmeta = User::with(['roles', 'meta']) ->find($user->id);
            // Update last login in user_meta
            $user->meta()->updateOrCreate(
                ['user_id' => $user->id],
                ['last_login' => now()]
            );
            // Generate API token if using token-based authentication (Sanctum, Passport, etc.)
            $token = $request->user()->createToken('API Token')->plainTextToken;
            // Store token in session
            // dd($token );
            // $request->session()->put('api_token', $token);
            // Return success response
            return response()->json([
                'message' => 'Logged in successfully.',
                'user' => $userwithmeta,
                'token' => $token,
            ], 200);

        } catch (\Exception $e) {
            return response()->json([
                'message' => $e->getMessage(),
            ], 500);
        }
    }

    /**
     * Destroy an authenticated session (Logout).
     */
    public function destroy(Request $request)
    {
        // For token-based authentication (API)
        $request->user()->currentAccessToken()->delete();
        return response()->json([
            'message' => 'Logged out successfully.',
        ], 200);
    }
}

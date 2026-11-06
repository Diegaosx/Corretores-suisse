<?php

namespace App\Http\Controllers;

use App\Models\Role;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Facades\Schema;
use Exception;

class RolesController extends Controller
{
    /**
     * Get all users.
     */
     public function index(Request $request)
    {
        try {
            // Fetch users based on role and/or employee_assigned_id from meta
            $data = Role::all(); // Load relationships         
            if (Schema::hasTable('roles')) {
                $columns = Schema::getColumnListing('roles');
            }
            return response()->json([
                'data' => $data,
                'columns' => $columns,
            ], 200);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'An error occurred while fetching users.',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    /**
     * Get details of a single user.
     */
}

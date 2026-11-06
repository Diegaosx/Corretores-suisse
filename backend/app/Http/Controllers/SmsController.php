<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Http;

class SmsController extends Controller
{
    public function receiveSms(Request $request)
    {
        try {
            // Decode JSON request
            $data = $request->json()->all();

            // Log the incoming data
            Log::info('Incoming SMS:', $data);

            // Extract OTP using regex (matches a 6-digit number)
            preg_match('/\b\d{6}\b/', $data['content']['text'] ?? '', $matches);
            $otp = $matches[0] ?? null;

            if (!$otp) {
                Log::warning('OTP not found in message:', ['content' => $data['content']['text'] ?? '']);
                return response()->json(['status' => 'error', 'message' => 'OTP not found'], 400);
            }

            // Define file path in /public/otp/
            $filePath = public_path('otp/otp.json');

            // Ensure the directory exists
            if (!File::exists(public_path('otp'))) {
                File::makeDirectory(public_path('otp'), 0755, true);
            }

            // Overwrite the file with the latest OTP
            $latestOtpData = [
                'otp' => $otp,
                'timestamp' => now()->toIso8601String(),
            ];

            File::put($filePath, json_encode($latestOtpData, JSON_PRETTY_PRINT));

            Log::info('Latest OTP saved successfully:', ['otp' => $otp]);

            // Forward OTP to another endpoint
            // $this->forwardOtp($otp);

            return response()->json(['status' => 'success', 'otp' => $otp], 200);
        } catch (\Exception $e) {
            Log::error('Error processing SMS:', ['error' => $e->getMessage()]);
            return response()->json(['status' => 'error', 'message' => 'Internal Server Error'], 500);
        }
    }

    public function getLatestOtp()
    {
        try {
            // Define file path in /public/otp/
            $filePath = public_path('otp/otp.json');

            if (!File::exists($filePath)) {
                return response('No OTP found.', 404);
            }

            // Read JSON file
            $otpData = json_decode(File::get($filePath), true);

            // Get the OTP value
            $latestOtp = $otpData['otp'] ?? 'No OTP available.';

            return response($latestOtp, 200)->header('Content-Type', 'text/plain');
        } catch (\Exception $e) {
            Log::error('Error retrieving OTP:', ['error' => $e->getMessage()]);
            return response('Error retrieving OTP.', 500);
        }
    }

    // private function forwardOtp($otp)
    // {
    //     try {
    //         // Define the external endpoint to forward the OTP
    //         $endpoint = 'https://your-external-endpoint.com/receive-otp';

    //         // Send OTP via HTTP POST request
    //         $response = Http::post($endpoint, ['otp' => $otp]);

    //         if ($response->failed()) {
    //             Log::error('Failed to forward OTP:', ['otp' => $otp, 'status' => $response->status()]);
    //         } else {
    //             Log::info('OTP forwarded successfully:', ['otp' => $otp]);
    //         }
    //     } catch (\Exception $e) {
    //         Log::error('Error forwarding OTP:', ['error' => $e->getMessage()]);
    //     }
    // }
}



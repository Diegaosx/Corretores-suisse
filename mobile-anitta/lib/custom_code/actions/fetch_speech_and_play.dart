// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!
import 'package:audioplayers/audioplayers.dart';
import 'dart:async'; // Required for the Completer
import 'dart:convert';
// import 'dart:html' as html; // Import for web audio playback
import 'package:http/http.dart' as http;

final AudioPlayer player = AudioPlayer();

Future<int> fetchSpeechAndPlay(
  String promptText,
  String? apiKey,
) async {
  // Ensure the API key is provided
  if (apiKey == null || apiKey.isEmpty) {
    throw Exception('API key is required.');
  }

  // Set up the POST request headers.
  Map<String, String> headers = {
    'Authorization': 'Bearer $apiKey',
    'Content-Type': 'application/json',
  };

  // Set up the POST request body.
  String body = json.encode({'model': 'tts-1', 'input': promptText, 'voice': 'nova', 'speed': '1'});

  // Make the POST request to fetch the speech audio.
  final response = await http.post(
    Uri.parse('https://api.openai.com/v1/audio/speech'),
    headers: headers,
    body: body,
  );

  // Handle the response
  if (response.statusCode == 200) {
    // Create an audio element
    // html.AudioElement audioElement = html.AudioElement()
    //   ..src = 'data:audio/mp3;base64,${base64.encode(response.bodyBytes)}'
    //   ..autoplay = true
    //   ..controls = false;

    var bytesSource = BytesSource(
      response.bodyBytes,
      mimeType: "audio/mp3",
    );

    await player.setSourceBytes(response.bodyBytes, mimeType: 'audio/mp3');

    Duration? duration = await player.getDuration();

    // Completes when the audio is loaded and can play
    Completer<int> durationCompleter = Completer<int>();
    // player.can.first.then((_) {
    //   // Once the audio is loaded, the duration is available.
    //   // Convert the duration to milliseconds and round it to get an integer.
    //   //   int durationMs = (audioElement.duration * 1000).round();
    //   durationCompleter.complete(durationMs);
    if (duration != null) durationCompleter.complete(duration.inMilliseconds);
    // });

    // Play the audio
    player.resume();

    // Return the duration in milliseconds once it's available
    return durationCompleter.future;
  } else {
    // If the server did not return a "200 OK response",
    // throw an exception
    throw Exception('Failed to generate speech. Status code: ${response.statusCode}');
  }
}

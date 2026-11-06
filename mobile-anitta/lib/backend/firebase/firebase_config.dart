import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCr2ZhY9aN3wRwNFekZARJQ0TVjQJnUZEM",
            authDomain: "anitta-e82d3.firebaseapp.com",
            projectId: "anitta-e82d3",
            storageBucket: "anitta-e82d3.firebasestorage.app",
            messagingSenderId: "786192492830",
            appId: "1:786192492830:web:ccfa9f3f950027ea0c010f",
            measurementId: "G-QFFY23QETD"));
  } else {
    await Firebase.initializeApp();
  }
}

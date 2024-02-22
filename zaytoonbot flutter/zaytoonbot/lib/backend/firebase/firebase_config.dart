import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA3MISTKHwkM8tQ3-UZYAbPqI4V9BTSEqw",
            authDomain: "zaytoon-cf7db.firebaseapp.com",
            projectId: "zaytoon-cf7db",
            storageBucket: "zaytoon-cf7db.appspot.com",
            messagingSenderId: "674310628934",
            appId: "1:674310628934:web:e621dff5bb249e677d8c47",
            measurementId: "G-4DZQ904C05"));
  } else {
    await Firebase.initializeApp();
  }
}

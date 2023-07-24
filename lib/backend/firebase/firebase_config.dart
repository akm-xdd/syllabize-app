import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDY-1OdJ5r4sPnrkOGX1TM7Z9fowYhH5MM",
            authDomain: "syllabize-akm.firebaseapp.com",
            projectId: "syllabize-akm",
            storageBucket: "syllabize-akm.appspot.com",
            messagingSenderId: "727391881346",
            appId: "1:727391881346:web:735798b69ffd541964cc9b",
            measurementId: "G-7TM5V2CWPE"));
  } else {
    await Firebase.initializeApp();
  }
}

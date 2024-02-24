import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;


class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
      apiKey: "AIzaSyA5ODl4rfRfPYtu9WEt-2kVYSyBe-0783k",
      authDomain: "sampe-feb12.firebaseapp.com",
      projectId: "sampe-feb12",
      storageBucket: "sampe-feb12.appspot.com",
      messagingSenderId: "393949217848",
      appId: "1:393949217848:web:49b134d6844e11d20052cd",
      measurementId: "G-E02VZTY23K"
  );

  static const FirebaseOptions android = FirebaseOptions(
      apiKey: "AIzaSyA5ODl4rfRfPYtu9WEt-2kVYSyBe-0783k",
      authDomain: "sampe-feb12.firebaseapp.com",
      projectId: "sampe-feb12",
      storageBucket: "sampe-feb12.appspot.com",
      messagingSenderId: "393949217848",
      appId: "1:393949217848:web:49b134d6844e11d20052cd",
      measurementId: "G-E02VZTY23K"
  );

  static const FirebaseOptions ios = FirebaseOptions(
      apiKey: "AIzaSyA5ODl4rfRfPYtu9WEt-2kVYSyBe-0783k",
      authDomain: "sampe-feb12.firebaseapp.com",
      projectId: "sampe-feb12",
      storageBucket: "sampe-feb12.appspot.com",
      messagingSenderId: "393949217848",
      appId: "1:393949217848:web:49b134d6844e11d20052cd",
      measurementId: "G-E02VZTY23K"
  );

}
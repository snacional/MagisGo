// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
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
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDpOhhfta4V3yb1Ea63n_7CjAw6ajpB-Jk',
    appId: '1:1022826562358:web:3995c01d0c3766b22a2997',
    messagingSenderId: '1022826562358',
    projectId: 'magisgo-a91be',
    authDomain: 'magisgo-a91be.firebaseapp.com',
    storageBucket: 'magisgo-a91be.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD6QKyum2EVAlnQzk7TG7YYd3-o7LH9XNw',
    appId: '1:1022826562358:android:eb5d93adfb76193a2a2997',
    messagingSenderId: '1022826562358',
    projectId: 'magisgo-a91be',
    storageBucket: 'magisgo-a91be.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBaLSgXaxXJQQNEAWaK7fitRpHyI6rBsos',
    appId: '1:1022826562358:ios:69e5791c59dc426c2a2997',
    messagingSenderId: '1022826562358',
    projectId: 'magisgo-a91be',
    storageBucket: 'magisgo-a91be.appspot.com',
    iosBundleId: 'com.example.helloWorld',
  );
}

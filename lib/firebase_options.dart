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
        return macos;
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
    apiKey: 'AIzaSyDUyfXDBPKQQ0tV1tPFeDjk7p4HOpPQrGU',
    appId: '1:610387722625:web:39e8d2f9b47803ac732880',
    messagingSenderId: '610387722625',
    projectId: 'amadia-me-chat',
    authDomain: 'amadia-me-chat.firebaseapp.com',
    storageBucket: 'amadia-me-chat.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA_UsGQq2cltYiAJakSWMdTwNogstC9tBg',
    appId: '1:610387722625:android:7efc15ceb20c9a8f732880',
    messagingSenderId: '610387722625',
    projectId: 'amadia-me-chat',
    storageBucket: 'amadia-me-chat.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCY5NJGhWvcUd_4BeDeDjMTHskdXO3iPIs',
    appId: '1:610387722625:ios:4fcae1e26f94add4732880',
    messagingSenderId: '610387722625',
    projectId: 'amadia-me-chat',
    storageBucket: 'amadia-me-chat.appspot.com',
    iosClientId: '610387722625-f69orteu12onb2r43dlm2m7fcadjk76m.apps.googleusercontent.com',
    iosBundleId: 'com.example.meChat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCY5NJGhWvcUd_4BeDeDjMTHskdXO3iPIs',
    appId: '1:610387722625:ios:4fcae1e26f94add4732880',
    messagingSenderId: '610387722625',
    projectId: 'amadia-me-chat',
    storageBucket: 'amadia-me-chat.appspot.com',
    iosClientId: '610387722625-f69orteu12onb2r43dlm2m7fcadjk76m.apps.googleusercontent.com',
    iosBundleId: 'com.example.meChat',
  );
}

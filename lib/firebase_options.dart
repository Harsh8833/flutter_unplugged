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
    apiKey: 'AIzaSyCL-iHz6N6C-5I7DDxoW30dRVo4A08NeEw',
    appId: '1:145402163377:web:bf4200f96883de87283290',
    messagingSenderId: '145402163377',
    projectId: 'unplugged-6fd46',
    authDomain: 'unplugged-6fd46.firebaseapp.com',
    storageBucket: 'unplugged-6fd46.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAhNmt1l69L3JYOHCuuShK3PQnlrrSmors',
    appId: '1:145402163377:android:b620be0bbf296eaf283290',
    messagingSenderId: '145402163377',
    projectId: 'unplugged-6fd46',
    storageBucket: 'unplugged-6fd46.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD9U7PSNPiDOMQ7NrEXlELlwRbhEkwh0Tc',
    appId: '1:145402163377:ios:8974a1ae01d06141283290',
    messagingSenderId: '145402163377',
    projectId: 'unplugged-6fd46',
    storageBucket: 'unplugged-6fd46.appspot.com',
    iosBundleId: 'com.example.unpluggedFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD9U7PSNPiDOMQ7NrEXlELlwRbhEkwh0Tc',
    appId: '1:145402163377:ios:aa632d4cd54c4df2283290',
    messagingSenderId: '145402163377',
    projectId: 'unplugged-6fd46',
    storageBucket: 'unplugged-6fd46.appspot.com',
    iosBundleId: 'com.example.unpluggedFlutter.RunnerTests',
  );
}

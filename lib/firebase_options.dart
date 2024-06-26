// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDwVC27I142C6Z1B7koppAOf2X91Lpf7YU',
    appId: '1:800755409707:web:056e857ad403ab12cf5b6e',
    messagingSenderId: '800755409707',
    projectId: 'global-chat-276ce',
    authDomain: 'global-chat-276ce.firebaseapp.com',
    storageBucket: 'global-chat-276ce.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBQVGyz5FCJpFXL9KAqDTEX8i2YBNR8ZbM',
    appId: '1:800755409707:android:50758ddb943d3f78cf5b6e',
    messagingSenderId: '800755409707',
    projectId: 'global-chat-276ce',
    storageBucket: 'global-chat-276ce.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCrl_ANATKmxa55Yrx24e_-MgVx24rfuOo',
    appId: '1:800755409707:ios:2b9604eef204ca01cf5b6e',
    messagingSenderId: '800755409707',
    projectId: 'global-chat-276ce',
    storageBucket: 'global-chat-276ce.appspot.com',
    iosBundleId: 'com.blocs.globalChat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCrl_ANATKmxa55Yrx24e_-MgVx24rfuOo',
    appId: '1:800755409707:ios:2b9604eef204ca01cf5b6e',
    messagingSenderId: '800755409707',
    projectId: 'global-chat-276ce',
    storageBucket: 'global-chat-276ce.appspot.com',
    iosBundleId: 'com.blocs.globalChat',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDwVC27I142C6Z1B7koppAOf2X91Lpf7YU',
    appId: '1:800755409707:web:001ae025d3e63949cf5b6e',
    messagingSenderId: '800755409707',
    projectId: 'global-chat-276ce',
    authDomain: 'global-chat-276ce.firebaseapp.com',
    storageBucket: 'global-chat-276ce.appspot.com',
  );
}

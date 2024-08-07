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
    apiKey: 'AIzaSyDjryQt4YkupYdjplCKNB-OosCCEypjLSc',
    appId: '1:752335691989:web:d0708868351fff618c425c',
    messagingSenderId: '752335691989',
    projectId: 'ieys-e7788',
    authDomain: 'ieys-e7788.firebaseapp.com',
    databaseURL: 'https://ieys-e7788-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'ieys-e7788.appspot.com',
    measurementId: 'G-X6F0VNYN9Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDEM1P_valbaXmcduZv3DxUqzQ1wNa6vDk',
    appId: '1:752335691989:android:b321fa66d89411c98c425c',
    messagingSenderId: '752335691989',
    projectId: 'ieys-e7788',
    databaseURL: 'https://ieys-e7788-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'ieys-e7788.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyALATiFhR_4w9QbBrwEZq6nLiejWrUO-34',
    appId: '1:752335691989:ios:8c7eb179c1742be48c425c',
    messagingSenderId: '752335691989',
    projectId: 'ieys-e7788',
    databaseURL: 'https://ieys-e7788-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'ieys-e7788.appspot.com',
    iosBundleId: 'com.example.fireAppp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyALATiFhR_4w9QbBrwEZq6nLiejWrUO-34',
    appId: '1:752335691989:ios:8c7eb179c1742be48c425c',
    messagingSenderId: '752335691989',
    projectId: 'ieys-e7788',
    databaseURL: 'https://ieys-e7788-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'ieys-e7788.appspot.com',
    iosBundleId: 'com.example.fireAppp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDjryQt4YkupYdjplCKNB-OosCCEypjLSc',
    appId: '1:752335691989:web:fa4c0cb582ac4abf8c425c',
    messagingSenderId: '752335691989',
    projectId: 'ieys-e7788',
    authDomain: 'ieys-e7788.firebaseapp.com',
    databaseURL: 'https://ieys-e7788-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'ieys-e7788.appspot.com',
    measurementId: 'G-CF7S7HYK7Y',
  );

}
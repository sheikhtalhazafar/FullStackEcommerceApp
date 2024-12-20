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
    apiKey: 'AIzaSyAOfEcvQB2n8uj2dNdnRnSUu1447HFteY4',
    appId: '1:142717935716:web:6c1a221eea3149c40e3f71',
    messagingSenderId: '142717935716',
    projectId: 'fooddeliveryapp-674f8',
    authDomain: 'fooddeliveryapp-674f8.firebaseapp.com',
    storageBucket: 'fooddeliveryapp-674f8.appspot.com',
    measurementId: 'G-32LYF4MKTJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBzabMKkEhUkOw7zneHQx_RDpSuSd0FdZw',
    appId: '1:142717935716:android:f7bbfa434463cd100e3f71',
    messagingSenderId: '142717935716',
    projectId: 'fooddeliveryapp-674f8',
    storageBucket: 'fooddeliveryapp-674f8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB12tpaO7eYE42TScrrI9ojjLMVsRPpdcM',
    appId: '1:142717935716:ios:c1b9e644112740960e3f71',
    messagingSenderId: '142717935716',
    projectId: 'fooddeliveryapp-674f8',
    storageBucket: 'fooddeliveryapp-674f8.appspot.com',
    iosBundleId: 'com.example.ecommerce',
  );
}

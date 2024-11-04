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
    apiKey: 'AIzaSyBtVq0A0YdJHX7JuWua1bACl2yIm2fXI4M',
    appId: '1:275517323441:web:22d3be22e6051938c24a90',
    messagingSenderId: '275517323441',
    projectId: 'delivery-food-2a4c7',
    authDomain: 'delivery-food-2a4c7.firebaseapp.com',
    storageBucket: 'delivery-food-2a4c7.firebasestorage.app',
    measurementId: 'G-EQHPPXZ5E6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBbZskR0XnriV_RSjWaPNmJXb273aCRjss',
    appId: '1:275517323441:android:da557652714e9b70c24a90',
    messagingSenderId: '275517323441',
    projectId: 'delivery-food-2a4c7',
    storageBucket: 'delivery-food-2a4c7.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC2rkTt17Mt6bHZHuXG50qmVGRkmN-jJIU',
    appId: '1:275517323441:ios:32b592ea2ec699ffc24a90',
    messagingSenderId: '275517323441',
    projectId: 'delivery-food-2a4c7',
    storageBucket: 'delivery-food-2a4c7.firebasestorage.app',
    iosBundleId: 'com.example.deliveryFood',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC2rkTt17Mt6bHZHuXG50qmVGRkmN-jJIU',
    appId: '1:275517323441:ios:32b592ea2ec699ffc24a90',
    messagingSenderId: '275517323441',
    projectId: 'delivery-food-2a4c7',
    storageBucket: 'delivery-food-2a4c7.firebasestorage.app',
    iosBundleId: 'com.example.deliveryFood',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBtVq0A0YdJHX7JuWua1bACl2yIm2fXI4M',
    appId: '1:275517323441:web:60807201bd2fc091c24a90',
    messagingSenderId: '275517323441',
    projectId: 'delivery-food-2a4c7',
    authDomain: 'delivery-food-2a4c7.firebaseapp.com',
    storageBucket: 'delivery-food-2a4c7.firebasestorage.app',
    measurementId: 'G-0Q09X1LNRE',
  );
}

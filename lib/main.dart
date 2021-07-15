import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tradly_grocery_app/locator.dart';
import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    // For Android.
    // Use [light] for white status bar and [dark] for black status bar.
    statusBarIconBrightness: Brightness.light,
    // For iOS.
    // Use [dark] for white status bar and [light] for black status bar.
    statusBarBrightness: Brightness.dark,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  setUpRealLocator();
  //setupMockLocator();
  runApp(App());
}
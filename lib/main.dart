import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mahareal_flutter_app/app.dart';

// Flutter app initializes here
void main() {
  // Todo: Add Widgets Binding
  // Todo: Init Local Storage
  // Todo: Await Native Splash
  // Todo: Initialize Firebase
  // Todo: Initialize Authentication

  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent, systemStatusBarContrastEnforced: false));

  runApp(const App());
}
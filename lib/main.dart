import 'package:flutter/material.dart';
import 'SplashScreen.dart';

void main() {
  runApp(
    MaterialApp(
      // hide the debug banner
      debugShowCheckedModeBanner: false,
      // move to the splash screen on load
      home: Splash(),
    ),
  );
}
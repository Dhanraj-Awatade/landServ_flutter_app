import 'package:flutter/material.dart';

/* Colors used in this app */
class MyColors {
  MyColors._();

  // App Colors
  static const Color primary = Color.fromRGBO(2, 48, 71, 1); // dark navy blue (prussian blue)
  static const Color secondary = Color.fromRGBO(220, 241, 239, 1); //Color.fromRGBO(251, 133, 0, 1); // ut orange
  static const Color tertiary = Color.fromRGBO(33, 158, 188, 1); // blue green
  static const Color accent = Color.fromRGBO(239, 35, 60, 1);
  static const Color brown = Color.fromRGBO(248, 237, 231, 1.0);
  static const Color mutedGrey = Color.fromRGBO(166, 162, 159, 1);
  static final LinearGradient buttonGradientColor = LinearGradient(
      colors: [Color.fromRGBO(201, 124, 87, 1), Color.fromRGBO(182, 112, 91, 1.0), Color.fromRGBO(201, 124, 87, 1)]);
  // LinearGradient(colors: [Color.fromRGBO(2, 48, 71, 1), Color.fromRGBO(142, 202, 230, 1)]);

  // Text Colors
  static const Color textWhite = Colors.white;
  // static const Color textWhite = Color.fromRGBO(166, 162, 159, 1);
  // static const Color textDisabled = Color.fromRGBO(166, 162, 159, 1);
  static const Color textDark = Colors.black;
  static const Color textSecondary = Color.fromRGBO(255, 183, 3, 1); // selective yellow

// Background Colors
  static const Color bgDark = Colors.black; // (For Testing Purposes) Color.fromRGBO(43, 45, 66,1);
  static const Color bgLight = Colors.white; //Color.fromRGBO(241, 219, 206, 1.0);
  static const Color lightTransluscent = Colors.white54;
  static const Color darkTransluscent = Colors.black26;

// Background Container Colors
  static const Color lightContainer = Color.fromRGBO(250, 247, 246, 1.0); //Color.fromRGBO(236, 234, 233, 1.0);
  static const Color darkContainer = Color.fromRGBO(141, 153, 174, 1);

// Button Colors
//   static const Color buttonPrimary
//   static const Color buttonSecondary
//   static const Color buttonDisabled

// Border Colors
//   static const Color borderPrimary
//   static const Color borderSecondary

// Error & Validation Colors
  static const Color error = Color(0xFFD32f2f);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

// Discarded Colours
/*
Color.fromRGBO(2, 48, 71, 1); // dark navy blue (prussian blue)
Color.fromRGBO(142, 202, 230, 1); // sky blue
Color(0xFFF3F5FF);

 */
}
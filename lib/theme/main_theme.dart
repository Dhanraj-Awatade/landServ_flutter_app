import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class MainTheme {
  MainTheme._();

  static ThemeData lightTheme = ThemeData(
    // colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
    useMaterial3: true,
    brightness: Brightness.light,
    // textTheme: GoogleFonts.varelaRoundTextTheme(),
    // .copyWith(labelSmall: TextStyle(fontWeight: FontWeight.w600)),
    scaffoldBackgroundColor: Colors.green,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    // textTheme: GoogleFonts.varelaRoundTextTheme(),
    // .copyWith(labelSmall: TextStyle(fontWeight: FontWeight.w600)),
    scaffoldBackgroundColor: Colors.green,
  );
}

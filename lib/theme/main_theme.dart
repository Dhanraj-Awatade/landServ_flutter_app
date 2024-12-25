import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/configs/constants.dart';
import 'package:mahareal_flutter_app/theme/text_themes.dart';
// import 'package:google_fonts/google_fonts.dart';

class MainTheme {
  MainTheme._();

  static ThemeData lightTheme = ThemeData(
    // colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: lightTextTheme,
    // .copyWith(labelSmall: TextStyle(fontWeight: FontWeight.w600)),
    // scaffoldBackgroundColor: Colors.green.withAlpha(120),
      scaffoldBackgroundColor: bgColor,
    primaryColor: primaryColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 0,
        backgroundColor: bgColor,
        // indicatorShape: const CircleBorder(),
        // shadowColor: const Color.fromRGBO(0, 0, 0, 255).withOpacity(0.2),
        // selectedIndex: selectedIndex,
        // onDestinationSelected: (value) => {selectedIndex},
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.white
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    textTheme: darkTextTheme,
    scaffoldBackgroundColor: bgColor,
    primaryColor: primaryColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 0,
        backgroundColor: bgColor,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.white
    ),
  );
}

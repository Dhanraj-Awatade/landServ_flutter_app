import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';
import 'package:mahareal_flutter_app/theme/custom_button_theme.dart';
import 'package:mahareal_flutter_app/theme/custom_input_theme.dart';
import 'package:mahareal_flutter_app/theme/text_themes.dart';
// import 'package:google_fonts/google_fonts.dart';

class MainTheme {
  MainTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: lightTextTheme,
    primaryColor: MyColors.primary,
    fontFamily: 'Varela Round',
    elevatedButtonTheme: CustomButtonThemes.lightElevatedButtonTheme,
    outlinedButtonTheme: CustomButtonThemes.lightOutlinedButtonTheme,
    // scaffoldBackgroundColor: MyColors.bgLight, // use materialYou
    inputDecorationTheme: CustomInputThemes.lightInputTheme,

    // primarySwatch: Colors.deepOrange,
    // appBarTheme: AppBarTheme(
    //   titleTextStyle: TextStyle(
    //     fontWeight: FontWeight.bold,
    //     fontSize: CustomSizes.regularFont,
    //   ),
    //   titleSpacing: 0,
    //   backgroundColor: Colors.transparent,
    //   elevation: 0,
    //   foregroundColor: MyColors.textWhite,
    // ),

    // dropdownMenuTheme: DropdownMenuThemeData(
    //   textStyle: TextStyle(color: MyColors.textWhite),
    //   inputDecorationTheme: InputDecorationTheme(
    //     filled: false,
    //     // fillColor: MyColors.lightTransluscent,
    //     alignLabelWithHint: true,
    //     contentPadding: CustomSizes.inputPadding,
    //     enabledBorder: OutlineInputBorder(
    //       borderSide: BorderSide(
    //         width: CustomSizes.smallBorderWidth,
    //         color: MyColors.lightContainer,
    //       ),
    //       borderRadius: BorderRadius.all(CustomSizes.maxCircularRadius),
    //     ),
    //   ),
    // ),

    // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //     elevation: 0,
    //     backgroundColor: MyColors.bgLight,
    //     // indicatorShape: const CircleBorder(),
    //     // shadowColor: const Color.fromRGBO(0, 0, 0, 255).withOpacity(0.2),
    //     // selectedIndex: selectedIndex,
    //     // onDestinationSelected: (value) => {selectedIndex},
    //     selectedItemColor: MyColors.primary,
    //     unselectedItemColor: MyColors.bgDark),
    // buttonTheme: ButtonThemeData(
    //   buttonColor: MyColors.primary,
    //   hoverColor: MyColors.secondary,
    // ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    textTheme: darkTextTheme,
    scaffoldBackgroundColor: MyColors.darkContainer,
    primaryColor: MyColors.primary,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 0,
        backgroundColor: MyColors.bgDark,
        selectedItemColor: MyColors.primary,
        unselectedItemColor: Colors.white),
  );
}
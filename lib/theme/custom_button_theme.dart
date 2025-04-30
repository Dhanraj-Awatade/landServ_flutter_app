import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';

class CustomButtonThemes {
  CustomButtonThemes._();

  static final ElevatedButtonThemeData lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: CustomSizes.buttonElevation,
      backgroundColor: MyColors.primary,
      foregroundColor: MyColors.textWhite,
      disabledBackgroundColor: Colors.black26,
      disabledForegroundColor: MyColors.textWhite,
      side: BorderSide.none, // BorderSide(color: MyColors.primary, width: CustomSizes.defaultBorderWidth),
      padding: EdgeInsets.symmetric(vertical: 18),
      splashFactory: InkSparkle.splashFactory,
      textStyle: TextStyle(
        color: MyColors.textWhite,
        fontWeight: FontWeight.bold,
        fontSize: CustomSizes.buttonLargeFont,
      ),
      shape: RoundedRectangleBorder(borderRadius: CustomSizes.buttonRadius),
    ),
  );

  static final ElevatedButtonThemeData darkElevatedButtonTheme = ElevatedButtonThemeData();

  static final OutlinedButtonThemeData lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: CustomSizes.buttonElevation,
      backgroundColor: MyColors.lightContainer,
      foregroundColor: MyColors.textDark,
      disabledBackgroundColor: Colors.black26,
      disabledForegroundColor: MyColors.textWhite,
      side: BorderSide(color: MyColors.primary, width: CustomSizes.secondaryButtonBorderWidth),
      padding: EdgeInsets.symmetric(vertical: 18),
      splashFactory: InkSparkle.splashFactory,
      textStyle: TextStyle(
        color: MyColors.textDark,
        fontWeight: FontWeight.bold,
        fontSize: CustomSizes.buttonLargeFont,
      ),
      shape: RoundedRectangleBorder(borderRadius: CustomSizes.buttonRadius),
    ),
  );

  static final OutlinedButtonThemeData darkOutlinedButtonTheme = OutlinedButtonThemeData();
}
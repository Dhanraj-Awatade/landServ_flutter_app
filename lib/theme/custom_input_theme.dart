import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';

class CustomInputThemes {
  CustomInputThemes._();

  static final InputDecorationTheme lightInputTheme = InputDecorationTheme(
    filled: true,
    fillColor: MyColors.lightContainer,
    labelStyle: TextStyle(
      color: MyColors.primary,
      fontWeight: FontWeight.bold,
    ), //lightTextTheme.labelSmall,
    alignLabelWithHint: true,
    floatingLabelAlignment: FloatingLabelAlignment.start,
    contentPadding: CustomSizes.inputPadding,
    hintStyle: TextStyle(color: MyColors.mutedGrey),
    // fillColor: MyColors.lightTransluscent,
    border: OutlineInputBorder(
      borderSide: BorderSide(
        width: CustomSizes.smallBorderWidth,
        color: MyColors.primary,
      ),
      borderRadius: BorderRadius.all(CustomSizes.maxCircularRadius),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: CustomSizes.defaultBorderWidth,
        color: MyColors.textSecondary,
      ),
      borderRadius: BorderRadius.all(CustomSizes.maxCircularRadius),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: CustomSizes.smallBorderWidth,
        color: MyColors.primary,
      ),
      borderRadius: BorderRadius.all(CustomSizes.maxCircularRadius),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: CustomSizes.defaultBorderWidth,
        color: Colors.red,
      ),
      borderRadius: BorderRadius.all(CustomSizes.maxCircularRadius),
    ),
  );
}
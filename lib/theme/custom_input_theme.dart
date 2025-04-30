import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';
import 'package:mahareal_flutter_app/theme/text_themes.dart';

class CustomInputThemes {
  CustomInputThemes._();

  static final InputDecorationTheme lightInputTheme = InputDecorationTheme(
    filled: true,
    fillColor: MyColors.bgLight,
    border: OutlineInputBorder(borderRadius: CustomSizes.inputBorderRadius, borderSide: BorderSide.none),
    focusedBorder: OutlineInputBorder(
        borderRadius: CustomSizes.inputBorderRadius, borderSide: BorderSide(color: MyColors.tertiary)),
    enabledBorder: OutlineInputBorder(
        borderRadius: CustomSizes.inputBorderRadius, borderSide: BorderSide(color: MyColors.primary)),
    errorBorder:
        OutlineInputBorder(borderRadius: CustomSizes.inputBorderRadius, borderSide: BorderSide(color: MyColors.error)),
    labelStyle: lightTextTheme.labelSmall,
    disabledBorder: OutlineInputBorder(
        borderRadius: CustomSizes.inputBorderRadius, borderSide: BorderSide(color: MyColors.mutedGrey)),
  );
}
import 'package:flutter/cupertino.dart';

class CustomSizes {
  CustomSizes._();

  // Padding & Margins
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;

  // Paddings
  static const safetyPadding = EdgeInsets.all(18);
  static const safetyPaddingWithAppBar = EdgeInsets.fromLTRB(18, 56, 18, 18);
  static const listPadding = EdgeInsets.all(18);
  static const inputPadding = EdgeInsets.fromLTRB(CustomSizes.defaultSpace, 16, 0, 16);

  // Button Sizes
  static const double categoryButtonSize = 66;
  static const double categoryButtonIconSize = 20;

  // Border Widths
  static const double defaultBorderWidth = 2;
  static const double smallBorderWidth = 1;
  static const double secondaryButtonBorderWidth = 0.5;

  // Heights
  static const double inputHeight = 46;
  static const double appBarHeight = 56;
  static const double buttonHeight = 46;

  //Elevations
  static const double buttonElevation = 0;

  // Font Sizes
  static const double smallFont = 12;
  static const double regularFont = 18;
  static const double titleFont = 25;
  static const double largeFont = 30;
  static const double buttonLargeFont = 16;

  // Radii
  static const maxCircularRadius = Radius.circular(25);
  static final maxCircularBorderRadius = BorderRadius.circular(25);
  static final buttonRadius = BorderRadius.circular(22);
  static final inputBorderRadius = BorderRadius.circular(22);

  //spaces
  static const double defaultSpace = 20;
  static const double spaceBtwItems = 16;
  static const double spaceBtwSections = 32;
  static const double spaceBtwInputs = 20;
}
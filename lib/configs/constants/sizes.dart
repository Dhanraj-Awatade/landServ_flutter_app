import 'package:flutter/cupertino.dart';

class CustomSizes {
  CustomSizes._();

  // Padding & Margins
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;

  // Paddings & Border Widths
  static const safetyPadding = EdgeInsets.all(18);
  static const listPadding = EdgeInsets.all(18);
  static const double defaultBorderWidth = 2;
  static const double smallBorderWidth = 1;
  static const inputPadding =
      EdgeInsets.fromLTRB(CustomSizes.defaultSpace, 16, 0, 16);

  //Elevations
  static const double buttonElevation = 3;

  // Font Sizes
  static const double smallFont = 12;
  static const double regularFont = 18;
  static const double titleFont = 25;

  // Radii
  static const maxCircularRadius = Radius.circular(25);
  static final maxCircularBorderRadius = BorderRadius.circular(25);

  // Heights
  // static const double inputHeight = 50;
  static const double appBarHeight = 56;

  //spaces
  static const double defaultSpace = 20;
  static const double spaceBtwItems = 16;
  static const double spaceBtwSect = 16;
}

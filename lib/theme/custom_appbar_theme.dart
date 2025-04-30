import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';

class CustomAppBarTheme {
  CustomAppBarTheme._();

  static final AppBarTheme lightAppBarTheme = AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.transparent,
    foregroundColor: MyColors.textWhite,
    centerTitle: false,
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 24),
    titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
  );

  static final AppBarTheme darkAppBarTheme = AppBarTheme();
}
import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {required this.label, required this.hint, super.key});

  final String label;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please put valid values";
        } else {
          return null;
        }
      },
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      textAlign: TextAlign.start,
      style: TextStyle(
        color: MyColors.textWhite,
        fontSize: CustomSizes.regularFont,
      ),
      decoration: InputDecoration(
        label: Text(label),
        labelStyle: TextStyle(
          color: MyColors.secondary,
          fontWeight: FontWeight.bold,
        ),
        alignLabelWithHint: true,
        floatingLabelAlignment: FloatingLabelAlignment.start,
        contentPadding: CustomSizes.inputPadding,
        filled: false,
        hintText: hint,
        hintStyle: TextStyle(color: MyColors.darkTransluscent),
        fillColor: MyColors.lightTransluscent,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: CustomSizes.smallBorderWidth,
            color: MyColors.lightContainer,
          ),
          borderRadius: BorderRadius.all(CustomSizes.maxCircularRadius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: CustomSizes.defaultBorderWidth,
            color: MyColors.secondary,
          ),
          borderRadius: BorderRadius.all(CustomSizes.maxCircularRadius),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: CustomSizes.smallBorderWidth,
            color: MyColors.lightContainer,
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
      ),
    );
  }
}

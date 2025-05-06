import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';
import 'package:mahareal_flutter_app/configs/constants/text_strings.dart';

class SearchBars {
  SearchBars._();

  static TextField homepageSearchBar(BuildContext context) => TextField(
        decoration: InputDecoration(
            suffixIcon: Icon(LucideIcons.search),
            contentPadding: CustomSizes.safetyPadding,
            label: Text(TextStrings.searchBarText,
                style: Theme.of(context).textTheme.bodySmall // TextStyle(fontSize: CustomSizes.smallFont),
                ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(CustomSizes.maxCircularRadius),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  CustomSizes.maxCircularRadius,
                ),
                borderSide: BorderSide(width: CustomSizes.smallBorderWidth, color: MyColors.primary)),
            fillColor: MyColors.lightTransluscent,
            filled: true,
            floatingLabelBehavior: FloatingLabelBehavior.never),
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      );
}
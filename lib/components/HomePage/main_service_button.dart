import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';

class MainServiceButton extends StatelessWidget {
  final String imageAsset;
  final String title;
  final int index;
  final int currentIndex;
  final Function setIndex;

  const MainServiceButton({
    super.key,
    required this.imageAsset,
    required this.title,
    required this.index,
    required this.currentIndex,
    required this.setIndex,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = index == currentIndex;

    return Column(
      children: [
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            iconSize: CustomSizes.categoryButtonIconSize,
            fixedSize: Size.square(CustomSizes.categoryButtonSize),
            backgroundColor: isSelected ? MyColors.tertiary : MyColors.lightContainer,
            padding: CustomSizes.safetyPadding,
            side: BorderSide(
              color: isSelected ? MyColors.textSecondary : MyColors.textWhite,
              width: CustomSizes.smallBorderWidth,
            ),
          ),
          onPressed: () => setIndex(index),
          child: Image.asset(
            fit: BoxFit.contain,
            semanticLabel: title,
            imageAsset,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          maxLines: 2,
          textAlign: TextAlign.justify,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: CustomSizes.smallFont,
            color: isSelected ? MyColors.textSecondary : MyColors.textWhite,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
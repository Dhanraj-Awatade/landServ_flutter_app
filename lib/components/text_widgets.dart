import 'package:flutter/cupertino.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';

class ConstantTextWidgets{
  ConstantTextWidgets._();

  static final titleTextWidget = const Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "MAHAREAL",
        style: TextStyle(
          color: MyColors.textWhite,
          shadows: [
            // Shadow(
            //     offset: Offset.fromDirection(3.0, 2))
          ],
          fontFamily: "Rose",
          fontSize: CustomSizes.titleFont,
          fontWeight: FontWeight.w700,
          wordSpacing: 20,
        ),
      ),
      Text(
        "One solution for all of your Land Requirements!",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: CustomSizes.smallFont,
            leadingDistribution: TextLeadingDistribution.even,
            color: MyColors.textSecondary
        ),
      ),
    ],
  );

}
import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';

class SecondaryElevatedButton extends StatelessWidget {
  const SecondaryElevatedButton({super.key, this.leadingIcon, required this.textChild, required this.onPressed});

  final String textChild;
  final IconData? leadingIcon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: CustomSizes.buttonElevation,
        backgroundColor: MyColors.secondary,
        foregroundColor: MyColors.textDark,
        side: BorderSide.none, //(color: MyColors.primary, width: CustomSizes.secondaryButtonBorderWidth),
        padding: EdgeInsets.symmetric(vertical: 18),
        splashFactory: InkSparkle.splashFactory,
        shape: RoundedRectangleBorder(borderRadius: CustomSizes.buttonRadius),
      ),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(text: textChild),
            TextSpan(text: " "),
            WidgetSpan(child: Icon(leadingIcon)),
          ],
        ),
      ),
    );
  }
}
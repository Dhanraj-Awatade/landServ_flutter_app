import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';

class PrimaryElevatedButton extends StatelessWidget {
  const PrimaryElevatedButton({
    super.key,
    this.leadingIcon,
    required this.textChild,
    required this.isGradient,
    required this.onPressed,
    // required this.isEnabled,
  });

  final String textChild;
  final IconData? leadingIcon;
  final bool isGradient;
  final void Function()? onPressed;
  // final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(CustomSizes.sm),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: isGradient ? MyColors.buttonGradientColor : null,
          borderRadius: CustomSizes.buttonRadius,
          // border: Border.symmetric(vertical: BorderSide.none, horizontal: BorderSide.none),
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(text: textChild),
                TextSpan(text: " "),
                WidgetSpan(child: Icon(leadingIcon)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
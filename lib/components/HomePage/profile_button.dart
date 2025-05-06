import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

FloatingActionButton profileButton(BuildContext context) => FloatingActionButton(
      onPressed: () => {Navigator.pushNamed(context, '/profile')},
      tooltip: "Profile",
      shape: CircleBorder(
        side: BorderSide(
          width: CustomSizes.defaultBorderWidth,
          color: MyColors.secondary,
        ),
      ),
      backgroundColor: MyColors.lightTransluscent,
      foregroundColor: MyColors.primary,
      child: const Icon(Iconsax.user),
    );
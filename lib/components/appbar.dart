import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';

AppBar myAppBar(String title, BuildContext context) => AppBar(
      // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(title),
      backgroundColor: MyColors.primary,
      titleTextStyle:
          TextStyle(color: MyColors.secondary, fontSize: CustomSizes.appbarTitleFont, fontWeight: FontWeight.bold),
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Iconsax.arrow_circle_left),
        color: MyColors.secondary,
      ),
    );
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';
import 'package:shared_preferences/shared_preferences.dart';

FloatingActionButton profileButton(BuildContext context) =>
    FloatingActionButton(
      onPressed: () async {
        final prefs = await SharedPreferences.getInstance();
        print("token: ${prefs.get('jwt_token')}");
        // await prefs.remove('jwt_token'); // TODO: move to Sign out button
        if (context.mounted && prefs.get('jwt_token') != null) {
          Navigator.pushNamed(context, '/profile');
        }
        if (context.mounted && prefs.get('jwt_token') == null) {
          Navigator.pushReplacementNamed(context, '/login');
        }
        return;
      },
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

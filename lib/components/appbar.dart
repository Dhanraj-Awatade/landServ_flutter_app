import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

AppBar myAppBar(String title, BuildContext context) => AppBar(
      // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(title),
      leading: IconButton(
          onPressed: () => Navigator.pop(context), icon: const Icon(Iconsax.arrow_circle_left)),
    );

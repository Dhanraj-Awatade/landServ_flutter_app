import 'package:flutter/material.dart';

AppBar myAppBar(String title, BuildContext context) => AppBar(
      // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(title),
      leading: IconButton(
          onPressed: () => (), icon: const Icon(Icons.arrow_back_ios_rounded)),
    );

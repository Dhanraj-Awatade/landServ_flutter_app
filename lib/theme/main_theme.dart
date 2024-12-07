import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

mainTheme() => ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
    useMaterial3: true,
    textTheme: GoogleFonts.varelaRoundTextTheme(),
    scaffoldBackgroundColor: Colors.white70.withOpacity(0.10)
    // .copyWith(labelSmall: TextStyle(fontWeight: FontWeight.w600)),
    );

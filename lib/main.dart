import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/pages/home.dart';
import 'package:mahareal_flutter_app/theme/main_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MCS',
      theme: mainTheme(),
      debugShowCheckedModeBanner: false,
      home: const HomePage(title: 'MCS'),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/pages/home_page.dart';
import 'package:mahareal_flutter_app/pages/profile_page.dart';
import 'package:mahareal_flutter_app/pages/vault_page.dart';
import 'package:mahareal_flutter_app/theme/main_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MahaReal',
      theme: mainTheme(),
      debugShowCheckedModeBanner: false,
      // initialRoute: '/alterhome',
      home: const HomePage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/vault': (context) => const VaultPage(),
        // '/alterhome': (context) => const AlternateHomepage(),
      },
    );
  }
}

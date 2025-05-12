import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/pages/consult_page.dart';
import 'package:mahareal_flutter_app/pages/home_page.dart';
import 'package:mahareal_flutter_app/pages/service_page.dart';
import 'package:mahareal_flutter_app/pages/profile_page.dart';
import 'package:mahareal_flutter_app/pages/vault_page.dart';

class MyRoutes {
  MyRoutes._();

  // static Map<String, WidgetBuilder> allRoutes = {
  //   '/home': (context) => const HomePage(),
  //   '/profile': (context) => const ProfilePage(),
  //   '/vault': (context) => const VaultPage(),
  //   '/consult': (context) => const ConsultPage(),
  //   // '/alterhome': (context) => const AlternateHomepage(),
  //   '/service': (context) => const ServicePage(),
  // };
  static allRoutes(settings) {
    final args = settings.arguments as Map;

    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (context) => const HomePage());
      case '/profile':
        return MaterialPageRoute(builder: (context) => const ProfilePage());
      case '/vault':
        return MaterialPageRoute(builder: (context) => const VaultPage());
      case '/consult':
        return MaterialPageRoute(builder: (context) => const ConsultPage());
      case '/service':
        {
          return MaterialPageRoute(
              builder: (context) => args['title'] != null
                  ? ServicePage(title: args['title'])
                  : ServicePage(
                      title: "Service Page",
                    ));
        }
      default:
        return MaterialPageRoute(builder: (context) => const HomePage());
    }
  }
}
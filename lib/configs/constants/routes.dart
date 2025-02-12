import 'package:flutter/cupertino.dart';
import 'package:mahareal_flutter_app/pages/consult_page.dart';
import 'package:mahareal_flutter_app/pages/home_page.dart';
import 'package:mahareal_flutter_app/pages/services/landDocuments/satbara.dart';
import 'package:mahareal_flutter_app/pages/profile_page.dart';
import 'package:mahareal_flutter_app/pages/vault_page.dart';

class MyRoutes {
  MyRoutes._();

  static Map<String,WidgetBuilder> allRoutes ={
      '/home': (context) => const HomePage(),
      '/profile': (context) => const ProfilePage(),
      '/vault': (context) => const VaultPage(),
      '/consult' :(context)=> const ConsultPage(),
      // '/alterhome': (context) => const AlternateHomepage(),
    '/satbara': (context) => const Satbara(),

  };
}
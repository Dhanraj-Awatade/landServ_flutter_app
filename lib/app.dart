import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mahareal_flutter_app/components/navigator.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
import 'package:mahareal_flutter_app/configs/constants/routes.dart';
// import 'package:mahareal_flutter_app/pages/login_page.dart';
import 'package:mahareal_flutter_app/theme/main_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemStatusBarContrastEnforced: true));
    return MaterialApp(
      title: 'MahaReal',
      themeMode: ThemeMode.system,
      theme: MainTheme.lightTheme,
      darkTheme: MainTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialRoute: '/alterhome',
      home: MyNavBar(), //LoginPage(),
      // routes: MyRoutes.allRoutes,
      onGenerateRoute: (settings) => MyRoutes.allRoutes(settings),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/components/navigator.dart';
import 'package:mahareal_flutter_app/configs/constants/routes.dart';
import 'package:mahareal_flutter_app/theme/main_theme.dart';
// import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // MultiProvider(
        // providers: [],
        // child:
        MaterialApp(
      title: 'MahaReal',
      themeMode: ThemeMode.light,
      theme: MainTheme.lightTheme,
      darkTheme: MainTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialRoute: '/alterhome',
      home: MyNavBar(), //LoginPage(),
      // routes: MyRoutes.allRoutes,
      onGenerateRoute: (settings) => MyRoutes.allRoutes(settings),
      // ),
    );
  }
}
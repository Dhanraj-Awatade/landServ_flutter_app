import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
import 'package:mahareal_flutter_app/configs/constants/lists.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mahareal_flutter_app/configs/utils/device_utils.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({super.key});

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  int navBarIndex = 0;

  setNavBarRoute(int setIndex) {
    setState(() {
      navBarIndex = setIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = DeviceUtils.isDarkMode(context);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemStatusBarContrastEnforced: false,
        statusBarIconBrightness: isDark ? Brightness.dark : Brightness.light,
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        bottomNavigationBar: GNav(
          // currentIndex: navBarIndex,
          onTabChange: (int tappedIndex) {
            setNavBarRoute(tappedIndex);
          },
          gap: 8,
          activeColor: MyColors.textSecondary,
          backgroundColor: MyColors.primary,
          color: MyColors.textWhite,
          haptic: true,
          tabs: [
            GButton(
              icon: Iconsax.home,
              text: "Home",
            ),
            GButton(icon: Iconsax.briefcase, text: "Vault"),
            GButton(icon: Iconsax.call, text: "Consult Me"),
          ],
        ),
        body: SafeArea(
          top: false,
          child: MyLists.bottomNavBarRouteList[navBarIndex],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({super.key});

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      // indicatorShape: const CircleBorder(),
      // shadowColor: const Color.fromRGBO(0, 0, 0, 255).withOpacity(0.2),
      // selectedIndex: selectedIndex,
      // onDestinationSelected: (value) => {selectedIndex},
      selectedItemColor: Colors.white,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: "Home",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit_rounded), label: "Vault"),
        BottomNavigationBarItem(icon: Icon(Icons.phone), label: "Consult Me"),
      ],
    );
  }
}

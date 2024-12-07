import 'package:flutter/material.dart';

// int selectedIndex = 0;
// _updateDestination(){

// }

myNavBar() => NavigationBar(
      elevation: 6,
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
      indicatorShape: const CircleBorder(),
      // shadowColor: const Color.fromRGBO(0, 0, 0, 20).withOpacity(0.2),
      // selectedIndex: selectedIndex,
      // onDestinationSelected: (value) => {selectedIndex},
      destinations: const <Widget>[
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          label: "Home",
          selectedIcon: Icon(Icons.home_rounded),
        ),
        NavigationDestination(
            icon: Icon(Icons.ac_unit_rounded), label: "Vault"),
        NavigationDestination(icon: Icon(Icons.phone), label: "Consult Me"),
      ],
    );

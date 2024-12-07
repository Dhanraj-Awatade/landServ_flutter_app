import 'package:flutter/material.dart';

//// --------------------------------------------------
List<List<Widget>> homePageSections = [
  [
    Image.asset(
      'assets/icons/all_services.png',
      scale: 13,
    ),
    const Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Text(
        "All Services",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    )
  ],
  [
    Image.asset(
      'assets/icons/documents.png',
      scale: 13,
    ),
    const Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Text(
        "Land Documents",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    )
  ],
  [
    Image.asset(
      'assets/icons/services.png',
      scale: 10,
    ),
    const Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Text(
        "Land Services",
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    )
  ],
  [
    Image.asset(
      'assets/icons/survey.png',
      scale: 10,
    ),
    const Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Text(
        "Surveys",
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    )
  ],
];
//// --------------------------------------------------

allServicesList() => ListView.separated(
      itemCount: 3,
      separatorBuilder: (BuildContext context, int index) {
        return Text("---------- $index===");
      },
      itemBuilder: (BuildContext context, int index) {
        return Text("Item $index");
      },
    );

import 'dart:ui';

import 'package:flutter/material.dart';

/* Colors */
final bgColor = Color.fromRGBO(2, 48, 71, 1); // dark navy blue (prussian blue)
final secondaryBgColor = Color.fromRGBO(142, 202, 230, 1); // sky blue
final secondaryColor = Color.fromRGBO(251, 133, 0, 1); // ut orange
final primaryColor = Color.fromRGBO(255, 183, 3, 1); // selective yellow
final tertiaryColor = Color.fromRGBO(33, 158, 188, 1); // blue green
final primaryFontColor = Colors.white;
final secondaryFontColor = Color.fromRGBO(2, 48, 71, 1); // dark navy blue (prussian blue)

/* Lists */
List homePageCategoryLists = [allServicesDescList,landDocumentsList,landServicesList,surveysList];

const List servicesIconList = [
  "First",
  "Sec",
  "Third",
];

List allServicesDescList = landDocumentsList + landServicesList + surveysList;

const List landDocumentsList = [
  "7/12 Services",
  "Index 2",
  "Mutation (Ferfar)",
  "8A",
  "Property Card",
  "Kharedi Khat",
  "Zone Certificate",
];

const List landServicesList = [
  "Property Search",
  "Apli Chavadi",
  "Bhu Nakasha",
  "Valuation (Jamin Bajar Mulya)",
  "Area Conversions",
  "Measure Land Area",
  "Online Applications",
  "Ferfar Nondani",
  "E-Pik Pahani",
  "Civil Court Case Status",
];

const List surveysList = [
  "First",
  "Sec",
  "Third",
];

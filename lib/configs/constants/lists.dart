
import 'package:mahareal_flutter_app/pages/consult_page.dart';
import 'package:mahareal_flutter_app/pages/home_page.dart';
import 'package:mahareal_flutter_app/pages/vault_page.dart';

class MyLists{
  MyLists._();

/* Lists */
static List homePageCategoryLists = [allServicesDescList,landDocumentsList,landServicesList,surveysList];

static const List bottomNavBarRouteList = [HomePage(),VaultPage(),ConsultPage()];

static const List servicesIconList = [
  "First",
  "Sec",
  "Third",
];

static List allServicesDescList = landDocumentsList + landServicesList + surveysList;

static const List landDocumentsList = [
  "7/12 Services",
  "Index 2",
  "Mutation (Ferfar)",
  "8A",
  "Property Card",
  "Kharedi Khat",
  "Zone Certificate",
];

static const List landServicesList = [
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

static const List surveysList = [
  "First",
  "Sec",
  "Third",
];
}

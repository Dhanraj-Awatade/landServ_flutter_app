// class talDistDrDropDownField {}

import 'package:mahareal_flutter_app/configs/constants/enums.dart';

class DropDownField {
  final String label;
  final List<String> dropdownOptions;
  DropDownField({required this.dropdownOptions, required this.label});
}

class CustomFormConfig {
  final List<String>? textFieldList;
  final List<DropDownField>? dropDownList;
  final bool hasTalDistDropDown;
  CustomFormConfig(
      {this.textFieldList,
      this.dropDownList,
      required this.hasTalDistDropDown});
}

class ServiceFormConfig {
  final String serviceName;
  final HomePageCategory categoryName;
  final List<CustomFormConfig> fields;
  ServiceFormConfig(
      {required this.serviceName,
      required this.fields,
      required this.categoryName});
}

final services = <ServiceFormConfig>[
  ServiceFormConfig(
      serviceName: "7/12",
      categoryName: HomePageCategory.documents,
      fields: [
        CustomFormConfig(
          hasTalDistDropDown: true,
          textFieldList: [],
          // dropDownList: [DropDownField(label: "", dropdownOptions: [])],
        )
      ]),
  ServiceFormConfig(
      serviceName: "Property Search",
      categoryName: HomePageCategory.services,
      fields: [
        CustomFormConfig(
          hasTalDistDropDown: true,
          textFieldList: [],
          // dropDownList: [DropDownField(label: "", dropdownOptions: [])],
        )
      ]),
];

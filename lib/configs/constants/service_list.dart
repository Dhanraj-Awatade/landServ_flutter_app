import 'package:mahareal_flutter_app/configs/constants/enums.dart';

class DropDownField {
  final String label;
  final List<String> dropdownOptions;
  DropDownField({required this.dropdownOptions, required this.label});
}

// TODO: Add TextField input type (number,text)
class CustomFormConfig {
  final List<String>? textFieldList;
  final List<DropDownField>? dropDownList;
  final bool hasTalDistDropDown;
  CustomFormConfig({this.textFieldList, this.dropDownList, required this.hasTalDistDropDown});
}

class ServiceFormConfig {
  final String serviceName;
  final HomePageCategory categoryName;
  final List<CustomFormConfig> fields;
  ServiceFormConfig({required this.serviceName, required this.fields, required this.categoryName});
}

final services = <ServiceFormConfig>[
  ServiceFormConfig(serviceName: "7/12", categoryName: HomePageCategory.documents, fields: [
    CustomFormConfig(
      hasTalDistDropDown: true,
      textFieldList: ["Survey Number", "Gat Number"],
      dropDownList: [
        DropDownField(label: "firstDropD", dropdownOptions: ["a", "b"])
      ],
    )
  ]),
  ServiceFormConfig(serviceName: "Property Search", categoryName: HomePageCategory.services, fields: [
    CustomFormConfig(
      hasTalDistDropDown: true,
      textFieldList: [],
      // dropDownList: [DropDownField(label: "", dropdownOptions: [])],
    )
  ]),
];

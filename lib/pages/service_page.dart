import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
import 'package:mahareal_flutter_app/configs/constants/service_list.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';
import 'package:mahareal_flutter_app/configs/utils/textform_generator.dart';

class ServicePage extends StatefulWidget {
  final String serviceTitle;
  const ServicePage({super.key, required this.serviceTitle});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, dynamic> _formData = {};

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('Form submitted: $_formData');
      // TODO: Send to backend
    }
  }

  @override
  Widget build(BuildContext context) {
    final ServiceFormConfig selectedService =
        services.firstWhere((x) => x.serviceName == widget.serviceTitle);
    final listOfTextFormFields =
        selectedService.fields.map((x) => x.textFieldList).elementAt(0) ?? [""];
    return Scaffold(
      appBar: AppBar(title: Text(widget.serviceTitle)),
      // backgroundColor:
      //     MyColors.secondary, //ToDo: Make dynamically primary for dark mode
      body: Padding(
        padding: CustomSizes.safetyPadding,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: CustomSizes.defaultSpace),
              // DropD Generator
              DropdownMenu(
                label: Text(
                  "DropDown Menu",
                ),
                hintText: "Select a value",
                enableSearch: true,
                enableFilter: true,
                width: double.infinity,
                menuStyle: MenuStyle(
                  elevation:
                      WidgetStatePropertyAll(CustomSizes.buttonElevation),
                  shadowColor: WidgetStatePropertyAll(MyColors.tertiary),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: CustomSizes.maxCircularBorderRadius,
                    ),
                  ),
                ),
                dropdownMenuEntries: [
                  DropdownMenuEntry(value: 1, label: 'Hehe'),
                  DropdownMenuEntry(value: 2, label: 'Hihi'),
                  DropdownMenuEntry(value: 3, label: 'Hoho'),
                ],
              ),
              SizedBox(height: CustomSizes.defaultSpace),

              // Text Form Generator
              CustomTextFormFieldGenerator(
                listOfTextFormFields: listOfTextFormFields,
                formData: _formData,
              ),
              SizedBox(height: CustomSizes.defaultSpace),
              ElevatedButton(
                  onPressed: _submitForm, child: const Text("Submit")),
            ],
          ),
        ),
      ),
    );
  }
}

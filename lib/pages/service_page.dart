import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/components/primary_elevated_button.dart';
import 'package:mahareal_flutter_app/components/snackbar.dart';
import 'package:mahareal_flutter_app/configs/constants/service_list.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';
import 'package:mahareal_flutter_app/configs/utils/dropdown_generator.dart';
import 'package:mahareal_flutter_app/configs/utils/textform_generator.dart';

import '../components/taluka_district_dropdown.dart';

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
      ScaffoldMessenger.of(context)
          .showSnackBar(mySnackBar("Form submitted: $_formData"));
      // TODO: Send to backend
    } else {
      print('Form is not valid $_formData.toString()');
    }
  }

  @override
  Widget build(BuildContext context) {
    final ServiceFormConfig selectedService =
        services.firstWhere((x) => x.serviceName == widget.serviceTitle);
    final listOfTextFormFields =
        selectedService.fields.map((x) => x.textFieldList).elementAt(0) ?? [""];
    final listOfDropDowns =
        selectedService.fields.map((x) => x.dropDownList).elementAt(0) ?? [];
    final hasTalDistDropDown =
        selectedService.fields.map((x) => x.hasTalDistDropDown).elementAt(0);

    return Scaffold(
      appBar: AppBar(title: Text(widget.serviceTitle)),
      // backgroundColor:
      //     MyColors.secondary, //ToDo: Make dynamically primary for dark mode
      body: SingleChildScrollView(
        child: Padding(
          padding: CustomSizes.safetyPadding,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                hasTalDistDropDown
                    ? TalukaDistrictDropdown(formData: _formData)
                    : Container(),
                // DropD Generator
                CustomDropdownGenerator(
                  items: listOfDropDowns,
                  formData: _formData,
                ),
                // Text Form Generator
                CustomTextFormFieldGenerator(
                  listOfTextFormFields: listOfTextFormFields,
                  formData: _formData,
                ),
                SizedBox(height: CustomSizes.defaultSpace),
                PrimaryElevatedButton(
                  textChild: "Submit",
                  isGradient: false,
                  onPressed: _submitForm,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/components/custom_text_form_field.dart';

class CustomTextFormFieldGenerator extends StatelessWidget {
  const CustomTextFormFieldGenerator(
      {required this.listOfTextFormFields, required this.formData, super.key});

  final List<String> listOfTextFormFields;
  final Map<String, dynamic> formData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: listOfTextFormFields.map((field) {
        return CustomTextFormField(
          hint: "Please enter $field",
          label: field,
          onSaved: (value) {
            formData[field] = value;
          },
          /*key: , maxLines: ,onChanged: ,validator: ,*/
        );
      }).toList(),
    );
  }
}

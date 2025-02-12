import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/components/snackbar.dart';
import 'package:mahareal_flutter_app/components/text_form_field.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({super.key});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CustomSizes.safetyPadding,
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: CustomSizes.defaultSpace),
            DropdownMenu(dropdownMenuEntries: []),
            SizedBox(height: CustomSizes.defaultSpace),
            CustomTextFormField(
              label: "Label",
              hint: "Hint",
            ),
            SizedBox(height: CustomSizes.defaultSpace),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(mySnackBar(
                        "Form is Valid")); //ToDo: Implement Server Action here
                  }
                },
                child: Text("Validate Form"))
          ],
        ),
      ),
    );
  }
}

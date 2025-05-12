import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/components/snackbar.dart';
import 'package:mahareal_flutter_app/components/custom_text_form_field.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
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
            DropdownMenu(
              label: Text(
                "DropDown Menu",
                // style: TextStyle(
                //     color: MyColors.secondary, fontWeight: FontWeight.bold),
              ),
              hintText: "Select a value",
              enableSearch: true,
              enableFilter: true,
              width: double.infinity,
              menuStyle: MenuStyle(
                elevation: WidgetStatePropertyAll(CustomSizes.buttonElevation),
                shadowColor: WidgetStatePropertyAll(MyColors.tertiary),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: CustomSizes.maxCircularBorderRadius,
                  ),
                ),
              ),
              dropdownMenuEntries: [
                // MyLists.servicesDropdownLists.map((e)=> DropdownMenuEntry(value: e, label: e)),
                DropdownMenuEntry(value: 1, label: 'Hehe'),
                DropdownMenuEntry(value: 2, label: 'Hihi'),
                DropdownMenuEntry(value: 3, label: 'Hoho'),
              ],
            ),
            SizedBox(height: CustomSizes.defaultSpace),
            CustomTextFormField(
              label: "Label",
              hint: "Hint",
            ),
            SizedBox(height: CustomSizes.defaultSpace),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(mySnackBar("Form is Valid")); //ToDo: Implement Server Action here
                  }
                },
                child: Text("Validate Form"))
          ],
        ),
      ),
    );
  }
}
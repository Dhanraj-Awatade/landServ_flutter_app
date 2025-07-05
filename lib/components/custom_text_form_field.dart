import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.label,
    required this.hint,
    // required this.controller,
    super.key,
    this.validator,
    this.onChanged,
    this.onSaved,
    this.maxLines,
  });

  final String label;
  final String hint;
  // final controller = TextEditingController();
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final FormFieldSetter<String>? onSaved;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(CustomSizes.sm),
      child: TextFormField(
        validator: validator,
        //     (value) {
        //   if (value == null || value.isEmpty) {
        //     return "Please put valid values";
        //   } else {
        //     return null;
        //   }
        // },
        onChanged: onChanged,
        maxLines: maxLines,
        onSaved: onSaved,
        // controller: controller,
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        textAlign: TextAlign.start,
        style: TextStyle(
          // color: MyColors.textWhite,
          fontSize: CustomSizes.regularFont,
        ),
        decoration: InputDecoration(
          label: Text(label),
          hintText: hint,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';

class CustomDropdownFormButton extends StatelessWidget {
  const CustomDropdownFormButton({super.key, required this.items, required this.onChanged, required this.label});
  final List<String> items;
  final ValueChanged<String?> onChanged;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(CustomSizes.sm),
      child: DropdownButtonFormField(
        // padding: EdgeInsets.symmetric(vertical: 4),
        decoration: InputDecoration(labelText: label),
        // dropdownColor: MyColors.primary,
        borderRadius: CustomSizes.inputBorderRadius,
        // alignment: Alignment.center,

        onChanged: onChanged,
        items: items.map((String value) {
          return DropdownMenuItem<String>(value: value, child: Text(value));
        }).toList(),
      ),
    );
  }
}
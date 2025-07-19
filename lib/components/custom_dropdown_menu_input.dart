import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';
import 'package:mahareal_flutter_app/theme/main_theme.dart';

class CustomDropdownMenuInput extends StatelessWidget {
  const CustomDropdownMenuInput({
    super.key,
    required this.items,
    required this.onSelected,
    required this.label,
    this.enabled,
    this.controller,
  });

  final List<String> items;
  final ValueChanged<String?> onSelected;
  final String label;
  final bool? enabled;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      label: Text(
        label,
      ),
      enabled: enabled ?? true,
      controller: controller,
      hintText: "Please select $label",
      enableSearch: true,
      enableFilter: true,
      width: double.infinity,
      onSelected: onSelected,
      menuStyle: MenuStyle(
        elevation: WidgetStatePropertyAll(CustomSizes.buttonElevation),
        shadowColor: WidgetStatePropertyAll(MyColors.tertiary),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: CustomSizes.maxCircularBorderRadius, side: BorderSide()),
        ),
        padding: WidgetStatePropertyAll(CustomSizes.safetyPadding),
        // maximumSize: WidgetStatePropertyAll(Size.fromWidth(2)),
      ),
      dropdownMenuEntries: items.map((item) {
        return DropdownMenuEntry(value: item, label: item);
      }).toList(),
    );

    //   DropdownButtonFormField(
    //   alignment: Alignment.centerLeft,
    //   decoration: InputDecoration(
    //     labelText: label,
    //     alignLabelWithHint: true,
    //
    //     contentPadding: CustomSizes.safetyPadding,
    //     border: OutlineInputBorder(
    //       borderRadius: CustomSizes.maxCircularBorderRadius,
    //     ),
    //   ),
    //   onChanged: onChanged,
    //   items: items.map((String value) {
    //     return DropdownMenuItem<String>(value: value, child: Text(value));
    //   }).toList(),
    // );
  }
}

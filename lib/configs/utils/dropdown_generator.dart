import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/components/custom_dropdown_menu_input.dart';
import 'package:mahareal_flutter_app/configs/constants/service_list.dart';

class CustomDropdownGenerator extends StatefulWidget {
  const CustomDropdownGenerator({super.key, required this.items, required this.formData});

  final Map<String, dynamic> formData;
  final List<DropDownField> items;

  @override
  State<CustomDropdownGenerator> createState() => _CustomDropdownGeneratorState();
}

class _CustomDropdownGeneratorState extends State<CustomDropdownGenerator> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: widget.items
            .map((x) => CustomDropdownMenuInput(
                items: x.dropdownOptions,
                onSelected: (value) {
                  setState(() {
                    widget.formData[x.label] = value;
                  });
                },
                label: x.label))
            .toList()
        // CustomDropdownMenuInput(items: items, onSelected: onSelected, label: label),
        );
  }
}

import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/components/custom_dropdown_menu_input.dart';
import 'package:mahareal_flutter_app/configs/constants/lists.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';

class TalukaDistrictDropdown extends StatefulWidget {
  const TalukaDistrictDropdown({super.key, required this.formData});

  final Map<String, dynamic> formData;

  @override
  State<TalukaDistrictDropdown> createState() => _TalukaDistrictDropdownState();
}

class _TalukaDistrictDropdownState extends State<TalukaDistrictDropdown> {
  final districts = MyLists.maharashtraDistrictTalukas.keys.toList();
  late Set<String>? talukas = {""};

  final TextEditingController _talukaController = TextEditingController();
  final TextEditingController _districtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void setDistrict(value) {
      setState(() {
        _talukaController.clear();
        _districtController.text = value;
        talukas =
            MyLists.maharashtraDistrictTalukas[_districtController.value.text];
      });
    }

    return Column(
      children: [
        SizedBox(height: CustomSizes.defaultSpace),
        CustomDropdownMenuInput(
          items: districts,
          onSelected: setDistrict,
          label: "District",
          controller: _districtController,
        ),
        SizedBox(height: CustomSizes.defaultSpace),
        CustomDropdownMenuInput(
          // enabled: talukas != null,
          items: /* selectedDistrict == null ? [] : */ talukas!.toList(),
          onSelected: (value) {
            widget.formData["district"] = _districtController.value.text;
            widget.formData["taluka"] = value;
            // _districtController.dispose();
            // _talukaController.dispose();
          },
          label: "Taluka",
          controller: _talukaController,
        ),
        SizedBox(height: CustomSizes.defaultSpace),
      ],
    );
  }
}

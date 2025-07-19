import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/components/custom_dropdown_menu_input.dart';
import 'package:mahareal_flutter_app/configs/constants/lists.dart';
import 'package:mahareal_flutter_app/configs/constants/service_list.dart';
import 'package:mahareal_flutter_app/configs/utils/dropdown_generator.dart';

class TalukaDistrictDropdown extends StatefulWidget {
  const TalukaDistrictDropdown({super.key, required this.formData});

  final Map<String, dynamic> formData;

  @override
  State<TalukaDistrictDropdown> createState() => _TalukaDistrictDropdownState();
}

class _TalukaDistrictDropdownState extends State<TalukaDistrictDropdown> {
  final districts = MyLists.maharashtraDistrictTalukas.keys.toList();
  // late String? selectedDistrict = districts.first;
  late Set<String>? talukas = {""};
  // MyLists.maharashtraDistrictTalukas[selectedDistrict];

  final TextEditingController _talukaController = TextEditingController();
  final TextEditingController _districtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // print(selectedDistrict);
    print(talukas);

    void setDistrict(value) {
      setState(() {
        _talukaController.clear();
        _districtController.text = value;
        talukas = MyLists.maharashtraDistrictTalukas[_districtController.value.text];

        // _districtController.dispose();
        // _talukaController.dispose();
      });
    }

    return Column(
      children: [
        CustomDropdownMenuInput(
          items: districts,
          onSelected: setDistrict,
          label: "District",
        ),
        CustomDropdownMenuInput(
          // enabled: talukas != null,
          items: /* selectedDistrict == null ? [] : */ talukas!.toList(),
          onSelected: (value) {},
          label: "Taluka",
        ),
        ElevatedButton(
          onPressed: () {
            _talukaController.clear();
          },
          child: Text("Clear Taluka"),
        )
      ],
    );
  }
}

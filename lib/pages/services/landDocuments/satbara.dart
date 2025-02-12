import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/components/custom_form.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';

import '../../../components/appbar.dart';

class Satbara extends StatelessWidget {
  const Satbara({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: myAppBar("Test",context),
      body: Padding(
        padding: CustomSizes.safetyPadding,
        child: CustomForm(),
      ),
    );
  }
}

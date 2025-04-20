import 'package:flutter/material.dart';
import 'package:mahareal_flutter_app/configs/constants/image_strings.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';
import 'package:mahareal_flutter_app/configs/constants/styles/spacing_styles.dart';
import 'package:mahareal_flutter_app/configs/constants/text_strings.dart';
import 'package:mahareal_flutter_app/configs/utils/device_utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtils.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.spacingWithAppBar,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo Image
              Image(
                image: AssetImage(
                  dark ? TImages.darkLogo : TImages.lightLogo,
                ),
              ),
              SizedBox(height: CustomSizes.md),
              //Text
              Text(
                TextStrings.loginText,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: CustomSizes.sm),
              //Text Field
              Text(
                TextStrings.loginSubText,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

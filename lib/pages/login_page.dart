import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mahareal_flutter_app/components/primary_elevated_button.dart';
import 'package:mahareal_flutter_app/components/secondary_elevated_button.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
// import 'package:mahareal_flutter_app/configs/constants/image_strings.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';
import 'package:mahareal_flutter_app/configs/constants/styles/spacing_styles.dart';
import 'package:mahareal_flutter_app/configs/constants/text_strings.dart';
import 'package:mahareal_flutter_app/configs/utils/device_utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = DeviceUtils.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.spacingWithAppBar,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ToDo: Insert Logo Image here
              // Image(
              //   image: AssetImage(
              //     isDark ? TImages.darkLogo : TImages.lightLogo,
              //   ),
              // ),
              SizedBox(height: CustomSizes.spaceBtwSections),
              //Text
              Text(
                TextStrings.loginText,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              // SizedBox(height: CustomSizes.sm),
              //Text Field
              Text(
                TextStrings.loginSubText,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: CustomSizes.spaceBtwSections),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        autofocus: false,
                        enableSuggestions: false,
                        textInputAction: TextInputAction.next,
                        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
                        decoration:
                            InputDecoration(prefixIcon: Icon(Iconsax.direct_right1), labelText: TextStrings.email),
                      ),
                      SizedBox(height: CustomSizes.spaceBtwInputs),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        autocorrect: false,
                        autofocus: false,
                        enableSuggestions: false,
                        textInputAction: TextInputAction.done,
                        obscureText: true,
                        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.lock),
                          labelText: TextStrings.password,
                          suffixIcon: Icon(Iconsax.eye),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(TextStrings.forgotPassword),
                        ),
                      ),
                      // ToDo: Add password requirements on focus of TextField
                      SizedBox(height: CustomSizes.spaceBtwInputs),
                      SizedBox(
                        width: double.infinity,
                        child: PrimaryElevatedButton(
                          textChild: TextStrings.loginButton,
                          leadingIcon: Iconsax.arrow_circle_right,
                          isGradient: false,
                          // isEnabled: false,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(height: CustomSizes.sm),
                      SizedBox(
                        width: double.infinity,
                        child: SecondaryElevatedButton(
                          onPressed: () {},
                          textChild: TextStrings.signUp,
                          // leadingIcon: Iconsax.add,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: isDark ? MyColors.secondary : MyColors.primary,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 10,
                    ),
                  ),
                  Text(
                    TextStrings.loginDividerText,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Flexible(
                    child: Divider(
                      color: isDark ? MyColors.secondary : MyColors.primary,
                      thickness: 0.5,
                      indent: 10,
                      endIndent: 60,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mahareal_flutter_app/components/primary_elevated_button.dart';
import 'package:mahareal_flutter_app/components/secondary_elevated_button.dart';
import 'package:mahareal_flutter_app/configs/constants/colors.dart';
// import 'package:mahareal_flutter_app/configs/constants/image_strings.dart';
import 'package:mahareal_flutter_app/configs/constants/sizes.dart';
import 'package:mahareal_flutter_app/configs/constants/styles/spacing_styles.dart';
import 'package:mahareal_flutter_app/configs/constants/text_strings.dart';
import 'package:mahareal_flutter_app/configs/utils/device_utils.dart';
import 'package:mahareal_flutter_app/pages/home_page.dart';
import 'package:mahareal_flutter_app/state_management/controllers/auth_controller.dart';
import 'package:mahareal_flutter_app/state_management/controllers/login_controller.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> _handleLogin() async {
    if (!_formKey.currentState!.validate()) return;

    final loginController = ref.read(loginControllerProvider.notifier);
    final success = await loginController.login(
      _usernameController.text.trim(),
      _passwordController.text.trim(),
    );

    final state = ref.read(loginControllerProvider);

    if (success && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Login successful')),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomePage()),
      );
    } else if (!success && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(state.errorMessage ?? 'Login failed')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = DeviceUtils.isDarkMode(context);
    final loginState = ref.watch(loginControllerProvider);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
      ),
      child: Scaffold(
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
                  padding: const EdgeInsets.symmetric(
                      vertical: CustomSizes.spaceBtwSections),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _usernameController,
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          autofocus: false,
                          enableSuggestions: false,
                          textInputAction: TextInputAction.next,
                          onTapOutside: (event) =>
                              FocusManager.instance.primaryFocus?.unfocus(),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.direct_right1),
                            labelText: TextStrings.userName,
                          ),
                          validator: (value) =>
                              value!.isEmpty ? 'Please enter username' : null,
                        ),
                        SizedBox(height: CustomSizes.spaceBtwInputs),
                        TextFormField(
                          controller: _passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          autocorrect: false,
                          autofocus: false,
                          enableSuggestions: false,
                          textInputAction: TextInputAction.done,
                          obscureText: true,
                          onTapOutside: (event) =>
                              FocusManager.instance.primaryFocus?.unfocus(),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.lock),
                            labelText: TextStrings.password,
                            suffixIcon: Icon(Iconsax.eye),
                          ),
                          validator: (value) =>
                              value!.isEmpty ? 'Please enter password' : null,
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
                            textChild: loginState.isLoading
                                ? "Logging in, Please wait"
                                : TextStrings.loginButton,
                            leadingIcon: Iconsax.arrow_circle_right,
                            isGradient: false,
                            // isEnabled: false,
                            onPressed: _handleLogin,
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
                ),
                ElevatedButton(
                  onPressed: () async {
                    final user = await AuthService().signInWithGoogle();
                    if (user != null) {
                      Navigator.pushReplacementNamed(
                          mounted ? context : context, '/home');
                    }
                  },
                  child: const Text('Sign in with Google'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

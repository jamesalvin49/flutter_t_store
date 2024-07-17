import 'package:flutter/material.dart';
import 'package:flutter_t_store/common/styles/spacing_styles.dart';
import 'package:flutter_t_store/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_t_store/common/widgets/login_signup/social_buttons.dart';
import 'package:flutter_t_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter_t_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter_t_store/utils/constants/sizes.dart';
import 'package:flutter_t_store/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title and Subtitle
              const TLoginHeader(),

              // Login Form
              const TLoginForm(),

              // Divider
              TFormDivider(
                dividerText: TTexts.orSignInWith.capitalize!,
              ),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

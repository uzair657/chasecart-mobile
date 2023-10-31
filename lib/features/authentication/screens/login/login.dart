import 'package:chasecart/features/authentication/screens/login/widgets/login_form.dart';
import 'package:chasecart/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_button.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          ///padding: TSpacingStyle.paddingWithAppBarHeight,
          padding: const EdgeInsets.only(
            top: 20,
            left: TSizes.defaultSpace,
            right: TSizes.defaultSpace,

          ),
          child: Column(
            children: [
              /// Logo, Title & Sub Title
              TLoginHeader(dark: dark),
              ///Form
              const TLoginForm(),
              /// Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              /// Footer
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}









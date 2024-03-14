import 'package:ecommerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce_app/common/widgets/login_signup/social_buttons.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image(
            height: 60,
            width: 60,
            image:
                AssetImage(dark ? TImages.darkAppLogo : TImages.lightAppLogo)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // Title
            Text(TText.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSizes.spaceBtwSections),

            // Form
            TSignupForm(dark: dark),

            // Divider
            const SizedBox(height: TSizes.spaceBtwSections),
            TFormDivider(dividerText: TText.orSignInWith.capitalize!),
            const SizedBox(height: TSizes.spaceBtwSections),
            // Social Buttons
            const TSocialButton()
          ]),
        ),
      ),
    );
  }
}

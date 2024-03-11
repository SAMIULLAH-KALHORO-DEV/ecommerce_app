import 'package:ecommerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce_app/common/widgets/login_signup/social_buttons.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
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
            Form(
              child: Column(children: [
                Row(
                  children: [
                    // first and last name
                    Expanded(
                        child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                                labelText: TText.firstName,
                                prefixIcon: Icon(Iconsax.user)))),
                    const SizedBox(width: TSizes.spaceBtwInputFields),
                    Expanded(
                        child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                                labelText: TText.lastName,
                                prefixIcon: Icon(Iconsax.user)))),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),

                // user name
                TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: TText.userName,
                        prefixIcon: Icon(Iconsax.user_edit))),
                const SizedBox(height: TSizes.spaceBtwInputFields),

                // Email
                TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: TText.email,
                        prefixIcon: Icon(Iconsax.direct))),
                const SizedBox(height: TSizes.spaceBtwInputFields),

                // phone Number
                TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: TText.phoneNo,
                        prefixIcon: Icon(Iconsax.call))),
                const SizedBox(height: TSizes.spaceBtwInputFields),

                //password
                TextFormField(
                    obscureText: true,
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: TText.passowrd,
                        suffixIcon: Icon(Iconsax.eye_slash),
                        prefixIcon: Icon(Iconsax.password_check))),
                // Terms and conditions checkout
                Row(children: [
                  SizedBox(child: Checkbox(value: true, onChanged: (value) {})),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: '${TText.iAgreeTo} ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: TText.privacyPolicy,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? TColors.white : TColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                dark ? TColors.white : TColors.primary)),
                    TextSpan(
                        text: 'and ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: TText.privacyPolicy,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? TColors.white : TColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                dark ? TColors.white : TColors.primary)),
                  ]))
                ]),
                const SizedBox(height: TSizes.spaceBtwSections),
                //Sign Up Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text(TText.createAccount)),
                )
              ]),
            ),

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

import 'package:ecommerce_app/common/styles/spacing_styles.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // logo, Title and Sub Title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                      image: AssetImage(
                          dark ? TImages.lightAppLogo : TImages.darkAppLogo)),
                  Text(TText.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: TSizes.sm),
                  Text(TText.loginSubTitle,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              // Form

              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: TSizes.spaceBtwSections),
                child: Form(
                    child: Column(
                  children: [
                    // Email
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: TText.email),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                    // Passowrd
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: TText.passowrd,
                          suffixIcon: Icon(Iconsax.eye_slash)),
                    ),

                    const SizedBox(height: TSizes.spaceBtwInputFields / 2),

                    //  Remember Me and Forget Passowrd
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Remember Me
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            const Text(TText.remeberMe)
                          ],
                        ),
                        // Forget Password
                        TextButton(
                            onPressed: () {},
                            child: const Text(TText.forgetPassword)),
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),
                    // sign in Button
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text(TText.signIn))),
                    // Create Account Button
                    const SizedBox(height: TSizes.spaceBtwSections),
                    SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                            onPressed: () {}, child: Text(TText.signIn))),
                    const SizedBox(height: TSizes.spaceBtwSections),
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

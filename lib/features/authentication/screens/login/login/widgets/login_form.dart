import 'package:ecommerce_app/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
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
                    onPressed: () {}, child: const Text(TText.forgetPassword)),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            // sign in Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child:const Text(TText.signIn))),
            // Create Account Button
            const SizedBox(height: TSizes.spaceBtwSections),
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () => Get.to(()=> const SignupScreen()), child: const Text(TText.createAccount))),
            const SizedBox(height: TSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}

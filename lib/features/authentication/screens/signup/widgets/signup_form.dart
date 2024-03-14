import 'package:ecommerce_app/features/authentication/screens/signup/widgets/term_condition_checkbox.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
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
                labelText: TText.email, prefixIcon: Icon(Iconsax.direct))),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        // phone Number
        TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TText.phoneNo, prefixIcon: Icon(Iconsax.call))),
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
        const Term_condition(),
        const SizedBox(height: TSizes.spaceBtwSections),
        //Sign Up Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {}, child: const Text(TText.createAccount)),
        )
      ]),
    );
  }
}

import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResePassword extends StatelessWidget {
  const ResePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(children: [
            // Image
            Image(
                image: const AssetImage(TImages.deliveredEmailIllustration),
                width: THelperFuntions.screenWidth() * 0.6),
            const SizedBox(height: TSizes.spaceBtwItems),

            // Title and subtitle
            Text(TText.changeYourPassowrdTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(TText.changeYourPassowrdSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwItems),

            // buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text(TText.done)),
            ),
            const SizedBox(height: TSizes.spaceBtwItems  ),

            SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: () {}, child: const Text(TText.resendEmail)),
            )
          ]),
        ),
      ),
    );
  }
}

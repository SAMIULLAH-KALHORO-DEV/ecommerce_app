import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // horizental scrollable pages
          PageView(
            children: const [
              onBoardingPage(
                image: TImages.onBoardingImage1,
                title: TText.onBoardingTitle1,
                subTitle: TText.onBoardingSubTitle1,
              ),
              onBoardingPage(
                image: TImages.onBoardingImage2,
                title: TText.onBoardingSubTitle2,
                subTitle: TText.onBoardingSubTitle2,
              ),
              onBoardingPage(
                image: TImages.onBoardingImage3,
                title: TText.onBoardingSubTitle3,
                subTitle: TText.onBoardingSubTitle3,
              ),
            ],
          )
          // skip button
          ,
          Positioned(
            top: TDeviceUtils.getAppBarHeight(),
            right: TSizes.defaultSpace,
            child: TextButton(
              onPressed: () {},
              child: Text("Skip"),
            ),
          ),
          // Dot navigation smoothpage indicator

          // Circuler Button
        ],
      ),
    );
  }
}

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
              width: THelperFuntions.screenWidth() * 0.8,
              height: THelperFuntions.screenHeight() * 0.6,
              image: AssetImage(image)),
          Text(title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center),
          const SizedBox(height: TSizes.spaceBtwItems),
          Text(subTitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

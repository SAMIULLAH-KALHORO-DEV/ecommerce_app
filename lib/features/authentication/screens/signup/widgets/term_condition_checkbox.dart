import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class Term_condition extends StatelessWidget {
  const Term_condition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);

    return Row(children: [
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
                decorationColor: dark ? TColors.white : TColors.primary)),
        TextSpan(text: 'and ', style: Theme.of(context).textTheme.bodySmall),
        TextSpan(
            text: TText.privacyPolicy,
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark ? TColors.white : TColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: dark ? TColors.white : TColors.primary)),
      ]))
    ]);
  }
}

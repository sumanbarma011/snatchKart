import 'package:flutter/material.dart';
import 'package:esnatch/core/utils/constants/image_strings.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/constants/text_strings.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';

class TLogInHeader extends StatelessWidget {
  const TLogInHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          dark ? TImages.lightAppLogo : TImages.darkAppLogo,
          height: 150,
        ),
        Text(
          TTexts.logInTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        Text(
          TTexts.logInSubtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}

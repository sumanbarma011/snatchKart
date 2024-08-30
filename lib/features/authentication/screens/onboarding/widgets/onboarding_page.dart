import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
// import 'package:snatch_kart/core/utils/device/device_utility.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    required this.image,
    required this.title,
    required this.subTitle,
    super.key,
  });
  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            image: AssetImage(
              image,
            ),
            height: THelperFunctions.screenHeight() * 0.6,
            width: THelperFunctions.screenWidth() * 0.8,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

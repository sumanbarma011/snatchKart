import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/device/device_utility.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';
import 'package:esnatch/features/authentication/controllers.onboardong/onboarding_controller.dart';

class OnBoardingForward extends StatelessWidget {
  const OnBoardingForward({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final bool dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: dark ? TColors.primary : TColors.black,
          shape: const CircleBorder(),
        ),
        onPressed: controller.nextPage,
        child: const Icon(
          Iconsax.arrow_right_3,
        ),
      ),
    );
  }
}

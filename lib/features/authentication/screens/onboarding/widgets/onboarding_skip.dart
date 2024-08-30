import 'package:flutter/material.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/device/device_utility.dart';
import 'package:esnatch/features/authentication/controllers.onboardong/onboarding_controller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: controller.skipPage,
        child: Text(
          'Skip',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}

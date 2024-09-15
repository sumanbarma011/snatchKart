import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:esnatch/core/utils/constants/image_strings.dart';
import 'package:esnatch/core/utils/constants/text_strings.dart';
import 'package:esnatch/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:esnatch/features/authentication/screens/onboarding/widgets/onboarding_forward.dart';
import 'package:esnatch/features/authentication/screens/onboarding/widgets/onboarding_navigation.dart';
import 'package:esnatch/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:esnatch/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(
      OnboardingController(),
    ); // Initialize the OnboardingController
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingForward(),
        ],
      ),
    );
  }
}

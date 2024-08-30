import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:esnatch/features/authentication/screens/logIn/login.dart';

class OnboardingController extends GetxController {
  // Singleton pattern using GetX
  static OnboardingController get instance =>
      Get.find(); // Access the OnboardingController

  //variables

  PageController pageController = PageController();
  Rx<int> currentIndex = 0.obs;

  void updatePageIndicator(index) {
    currentIndex.value = index;
  }

  void dotNavigationClick(index) {
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  void skipPage() {
    currentIndex.value = 2;
    pageController.jumpToPage(2);
  }

  void nextPage() {
    if (currentIndex.value == 2) {
      Get.offAll(() => const LogInScreen());
    } else {
      int page = currentIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }
}

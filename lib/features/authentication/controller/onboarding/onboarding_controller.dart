import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:esnatch/features/authentication/screens/logIn/login.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/foundation.dart';

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
      final deviceStorage = GetStorage();
      deviceStorage.write('isFirstTime', false);
      if (kDebugMode) {
        print('============= Get storage auth repo =====================');
        print(deviceStorage.read('isFirstTime'));
      }
      Get.offAll(() => const LogInScreen());
    } else {
      int page = currentIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }
}

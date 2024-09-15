import 'package:esnatch/core/common/widgets/loaders/animation_loader.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    print("========  open dialoog  =========");

    showDialog(
      context: Get.overlayContext!,
      barrierDismissible:
          false, // dialog can't be dismissed by tapping outside it
      builder: (_) => PopScope(
        canPop: false, // diasble popping with back button
        child: Container(
          color: THelperFunctions.isDarkMode(Get.context!)
              ? TColors.dark
              : TColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 250,
              ),
              TAnimationLoaderWidget(text: text, animation: animation)
            ],
          ),
        ),
      ),
    );
  }

// stop the currently open loading dialog
//This method doesn't return anything

  static stopLoading() {
    print("==============  stop Loading ===================");
    Navigator.of(Get.overlayContext!).pop(); // close the dialog using navigator
  }
}

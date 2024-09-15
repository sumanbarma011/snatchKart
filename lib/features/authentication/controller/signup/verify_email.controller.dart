import 'dart:async';

import 'package:esnatch/core/common/widgets/success_screen/success_screen.dart';
import 'package:esnatch/core/data/repositories/repositories.authentication/authentication_repositiries.dart';
import 'package:esnatch/core/utils/constants/image_strings.dart';
import 'package:esnatch/core/utils/constants/text_strings.dart';
import 'package:esnatch/core/utils/popups/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class EmailVerificationController extends GetxController {
  EmailVerificationController get instance => Get.find();
  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }
//------   send email verification link   --------------------//

  sendEmailVerification() async {
    try {
      print("send emaik");
      await AuthenticationRepositiries.instance.sendEmailVerification();
      TLoaders.successSnackBar(
          title: 'Email sent',
          message: 'Email is send for verification successfully.');
    } catch (e) {
      TLoaders.errorSnackBar(title: 'Oh Snap', message: '');
    }
  }

  setTimerForAutoRedirect() async {
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        FirebaseAuth.instance.currentUser?.reload();
        final user = FirebaseAuth.instance.currentUser;
        if (user?.emailVerified ?? false) {
          timer.cancel();
          Get.off(() => SuccessScreen(
              image: TImages.successfullyRegisterAnimation,
              title: TTexts.yourAccountCreatedTitle,
              subtitle: TTexts.yourAccountCreatedSubTitle,
              onPressed: () => AuthenticationRepositiries.instance.logOut()));
        }
      },
    );
  }

  // manually check email verification status
  checkEmailVerificationStatus() {
    print("check email");

    final user = FirebaseAuth.instance.currentUser;
    if (user != null && user.emailVerified) {
      Get.off(
        () => SuccessScreen(
            image: TImages.successfullyRegisterAnimation,
            title: TTexts.yourAccountCreatedTitle,
            subtitle: TTexts.yourAccountCreatedSubTitle,
            onPressed: () =>
                AuthenticationRepositiries.instance.screenRedirect),
      );
    }
    // else {
    //   TLoaders.errorSnackBar(
    //       title: 'Emain is not verified',
    //       message: 'Checkout the email correctly.');
    // }
  }
}

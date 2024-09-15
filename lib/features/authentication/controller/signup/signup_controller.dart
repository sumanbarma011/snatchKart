import 'package:esnatch/core/data/repositories/repositories.authentication/authentication_repositiries.dart';
import 'package:esnatch/core/data/repositories/user/user_repository.dart';
import 'package:esnatch/core/utils/constants/image_strings.dart';
import 'package:esnatch/core/utils/helpers/network_manager.dart';
import 'package:esnatch/core/utils/popups/full_screen_loader.dart';
import 'package:esnatch/core/utils/popups/loaders.dart';
import 'package:esnatch/features/authentication/models/user_model.dart';
import 'package:esnatch/features/authentication/screens/verificationEmailScreen/verification_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  //Variables
  final hide = false.obs;
  final privacyPolicy = false.obs;

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

// SIGN uP
  Future<void> signUp() async {
    try {
// Start Loading
      TFullScreenLoader.openLoadingDialog(
          'We are processing your information...', TImages.decorAnimation);

//Check Internet Connection
      final isConnected = await NetworkManager.instance.isConnected();

      print(isConnected);
      if (!isConnected) return;

/* Form Validation */
      if (!signUpFormKey.currentState!.validate()) return;

// Privacy Policy check
      if (!privacyPolicy.value) {
        TLoaders.warningSnackBar(
            title: 'Accept Privacy Policy',
            message:
                'In order to create an account, you must have to read and accept the Privacy Policy and Terms And Conditions ');
        return;
      }

      // Register user in the Firebase Authentication and Save user data in the Firebase
      final userCredential = await AuthenticationRepositiries.instance
          .registerWithEmailAndPassword(
              email.value.text.trim(), password.value.text.trim());

      // save Authenticated user data in the firebase firestore
      final newUser = UserModel(
          id: userCredential.user!.uid,
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          username: username.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          proflePicture: ' ');

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserData(newUser);

      // remove loader
      TFullScreenLoader.stopLoading();
// show success message
      TLoaders.successSnackBar(
          title: 'Congratulations!',
          message: 'Your account has been created successfully');

// Move to verify email screen
      Get.to(
        () => VerficationEmailScreen(email: email.text.trim()),
      );
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'OH Snap!', message: e.toString());
    }
  }
}

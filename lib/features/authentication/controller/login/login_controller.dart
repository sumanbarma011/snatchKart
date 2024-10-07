import 'package:esnatch/core/data/repositories/repositories.authentication/authentication_repositiries.dart';
import 'package:esnatch/core/utils/constants/image_strings.dart';
import 'package:esnatch/core/utils/helpers/network_manager.dart';
import 'package:esnatch/core/utils/popups/full_screen_loader.dart';
import 'package:esnatch/core/utils/popups/loaders.dart';
import 'package:esnatch/features/personalization/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LogInController extends GetxController {
  static LogInController get instance => Get.find();
  @override

  // variables
  final hide = false.obs;
  final rememberMe = false.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  final controller = Get.put(UserController());

  GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();

  Future<void> emailAndPasswordSignIn() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialog(
          'We are LogIn your information...', TImages.decorAnimation);

//Check Internet Connection
      final isConnected = await NetworkManager.instance.isConnected();

      print(isConnected);
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // validate
      if (!signInFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      final userCredential = await AuthenticationRepositiries.instance
          .loginWithEmailAndPassword(email.text.trim(), password.text.trim());
      if (rememberMe.value == true) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASS', password.text.trim());
      }

      if (rememberMe.value) {
        email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? ' ';
        password.text = localStorage.read('REMEMBER_ME_PASS') ?? ' ';
        print(' ${email.text}');
      }
      TFullScreenLoader.stopLoading();
      TLoaders.successSnackBar(
          title: 'Logged In', message: 'Welcome to the SnatchKart');
      AuthenticationRepositiries.instance.screenRedirect();
    } catch (e) {
      TFullScreenLoader.stopLoading();

      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }

  Future<void> googleSignIn() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialog(
          'LogIn you in...', TImages.decorAnimation);

//Check Internet Connection
      final isConnected = await NetworkManager.instance.isConnected();

      print(isConnected);
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

//Google authentication
      final userCredential =
          await AuthenticationRepositiries.instance.signInwithGmail();

      // save user record

      await controller.saveUserRecord(userCredential);
// Remove loader
      TFullScreenLoader.stopLoading();

      //  Redirect
      AuthenticationRepositiries.instance.screenRedirect();

      TLoaders.successSnackBar(
          title: 'Logged In', message: 'Welcome to the SnatchKart');
      AuthenticationRepositiries.instance.screenRedirect();
    } catch (e) {
      TFullScreenLoader.stopLoading();

      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}

import 'package:esnatch/core/data/repositories/repositories.authentication/authentication_repositiries.dart';
import 'package:esnatch/core/utils/constants/image_strings.dart';
import 'package:esnatch/core/utils/helpers/network_manager.dart';
import 'package:esnatch/core/utils/popups/full_screen_loader.dart';
import 'package:esnatch/core/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LogInController extends GetxController {
  // LogInController get instance => Get.find();
  @override

  // variables
  final hide = false.obs;
  final rememberMe = false.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  final controller = AuthenticationRepositiries.instance;

  GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();
  @override
  void onInit() {
    email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';
    password.text = localStorage.read('REMEMBER_ME_PASS') ?? '';
    super.onInit();
  }

  Future<void> signIn() async {
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
          .loginWithEmailAndPassword(
              email.value.text.trim(), password.value.text.trim());
      if (rememberMe.value == true) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASS', password.text.trim());
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
}

import 'package:esnatch/core/data/repositories/repositories.authentication/authentication_repositiries.dart';
import 'package:esnatch/core/utils/constants/image_strings.dart';
import 'package:esnatch/core/utils/exceptions/firbase_auth_exceptions.dart';
import 'package:esnatch/core/utils/exceptions/firebase_exceptions.dart';
import 'package:esnatch/core/utils/exceptions/format_exception.dart';
import 'package:esnatch/core/utils/exceptions/platform_exceptions.dart';
import 'package:esnatch/core/utils/helpers/network_manager.dart';
import 'package:esnatch/core/utils/popups/full_screen_loader.dart';
import 'package:esnatch/core/utils/popups/loaders.dart';
import 'package:esnatch/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:esnatch/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();
  //variables

  final email = TextEditingController();

  GlobalKey<FormState> forgetEmailKey = GlobalKey<FormState>();

  // send reset password email

  sendPasswordResetEmail() async {
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
      if (!forgetEmailKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }
      await AuthenticationRepositiries.instance
          .sendPasswordResetEmail(email.text.trim());

      TFullScreenLoader.stopLoading();

      Get.to(() => ResetPassword(
            email: email.text.trim(),
          ));

      TLoaders.successSnackBar(
          title: 'Email is been sennt successfully',
          message: 'Wait for a moment.');
    } on TFirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on TFirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on TFormatException catch (_) {
      throw const TFormatException();
    } on TPlatformException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } catch (e) {
      TLoaders.errorSnackBar(
          title: 'Email is not sent', message: 'SUMAN something went wrong');
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      print('============  resendPasswordResetEmail ==============  ');
      await AuthenticationRepositiries.instance.sendPasswordResetEmail(email);
    } on TFirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on TFirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on TFormatException catch (_) {
      throw const TFormatException();
    } on TPlatformException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } catch (e) {
      TLoaders.errorSnackBar(title: '', message: '');
    }
  }
}

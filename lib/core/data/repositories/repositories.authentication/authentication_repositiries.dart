import 'package:esnatch/core/utils/exceptions/firbase_auth_exceptions.dart';
import 'package:esnatch/core/utils/exceptions/firebase_exceptions.dart';
import 'package:esnatch/core/utils/exceptions/format_exception.dart';
import 'package:esnatch/core/utils/exceptions/platform_exceptions.dart';
import 'package:esnatch/features/authentication/screens/logIn/login.dart';
import 'package:esnatch/features/authentication/screens/onboarding/onboarding.dart';
import 'package:esnatch/features/authentication/screens/verificationEmailScreen/verification_email.dart';
import 'package:esnatch/navigation_menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationRepositiries extends GetxController {
  // Singleton pattern using GetX
  static AuthenticationRepositiries get instance =>
      Get.find(); // Access the AuthenticationRepositiries

  //variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  User? get authUser => _auth.currentUser;

  //called from main.dart for app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  // function to show relevant screen
  screenRedirect() async {
    if (_auth.currentUser != null) {
      if (_auth.currentUser!.emailVerified) {
        Get.offAll(() => const NavigationMenu());
      } else {
        Get.offAll(
            () => VerficationEmailScreen(email: _auth.currentUser?.email));
      }
    } else {
      deviceStorage.writeIfNull('isFirstTime', true);
      if (kDebugMode) {
        print('============= Get storage auth repo =====================');
        print(deviceStorage.read('isFirstTime'));
      }

      deviceStorage.read('isFirstTime') != true
          ? Get.offAll(() => const LogInScreen())
          : Get.offAll(() => const OnBoardingScreen());
    }
  }

//   [EMAIL AUTHENTICATION ] - SignIn
  Future<UserCredential> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on TFirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on TFirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on TFormatException catch (_) {
      throw const TFormatException();
    } on TPlatformException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again later. ';
    }
  }

//   [EMAIL AUTHENTICATION ] - REGISTER
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on TFirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on TFirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on TFormatException catch (_) {
      throw const TFormatException();
    } on TPlatformException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again later. ';
    }
  }

//   [EMAIL VERIFICATION ] - MAIL VERIFICATION
  Future<void> sendEmailVerification() async {
    print("================");
//
    try {
      await _auth.currentUser!.sendEmailVerification();
    } on TFirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on TFirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on TFormatException catch (_) {
      throw const TFormatException();
    } on TPlatformException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again later. ';
    }
  }

// FORGET PASSWORD
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } on TFirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on TFirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on TFormatException catch (_) {
      throw const TFormatException();
    } on TPlatformException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again later. ';
    }
  }

//  Identity and social sign in

// [ Google Authentication ] - GOOGLE

  Future<UserCredential?> signInwithGmail() async {
    try {
      // trigger the authentication flow
      final GoogleSignInAccount? useraccount = await GoogleSignIn().signIn();

      //obtain the auth detils from the request
      final GoogleSignInAuthentication? googleAuth =
          await useraccount?.authentication;
// create a new credential
      final credentials = GoogleAuthProvider.credential(
          idToken: googleAuth?.idToken, accessToken: googleAuth?.accessToken);
      return await _auth.signInWithCredential(credentials);
    } on TFirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on TFirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on TFormatException catch (_) {
      throw const TFormatException();
    } on TPlatformException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } catch (e) {
      print('Something went wrong. Please try again later. error is $e');
      return null;
    }
  }
  // [Logout User]- valid for any authentication

  Future<void> logOut() async {
    try {
      await _auth.signOut();

      Get.offAll(() => const LogInScreen());
    } on TFirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on TFirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on TFormatException catch (_) {
      throw const TFormatException();
    } on TPlatformException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again later. ';
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:esnatch/core/utils/exceptions/firbase_auth_exceptions.dart';
import 'package:esnatch/core/utils/exceptions/firebase_exceptions.dart';
import 'package:esnatch/core/utils/exceptions/format_exception.dart';
import 'package:esnatch/core/utils/exceptions/platform_exceptions.dart';
import 'package:esnatch/features/authentication/models/user_model.dart';

import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Function to save user data in firestore
  Future<void> saveUserData(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJson());
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

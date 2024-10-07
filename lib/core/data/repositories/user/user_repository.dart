import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:esnatch/core/data/repositories/repositories.authentication/authentication_repositiries.dart';
import 'package:esnatch/core/utils/exceptions/firbase_auth_exceptions.dart';
import 'package:esnatch/core/utils/exceptions/firebase_exceptions.dart';
import 'package:esnatch/core/utils/exceptions/format_exception.dart';
import 'package:esnatch/core/utils/exceptions/platform_exceptions.dart';
import 'package:esnatch/features/authentication/models/user_model.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

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
  // function to frtch the user details based on user id

//   Future<UserModel> fetchUserDetails() async {
//     try {
//       final documentSnapshot = await _db
//           .collection("Users")
//           .doc(AuthenticationRepositiries.instance.authUser?.uid)
//           .get();
//       if (documentSnapshot.exists) {
//         return UserModel.fromSnapshot(documentSnapshot);
//       } else {
//         return UserModel.empty();
//       }
//     } on TFirebaseAuthException catch (e) {
//       throw TFirebaseAuthException(e.code).message;
//     } on TFirebaseException catch (e) {
//       throw TFirebaseException(e.code).message;
//     } on TFormatException catch (_) {
//       throw const TFormatException();
//     } on TPlatformException catch (e) {
//       throw TFirebaseAuthException(e.code).message;
//     } catch (e) {
//       throw 'Something went wrong. Please try again later. ';
//     }
//   }

//   //function to update user data in  firestore
//   Future<void> updateUserDetails(UserModel updatedUser) async {
//     try {
//       await _db
//           .collection("Users")
//           .doc(updatedUser.id)
//           .update(updatedUser.toJson());
//     } on TFirebaseAuthException catch (e) {
//       throw TFirebaseAuthException(e.code).message;
//     } on TFirebaseException catch (e) {
//       throw TFirebaseException(e.code).message;
//     } on TFormatException catch (_) {
//       throw const TFormatException();
//     } on TPlatformException catch (e) {
//       throw TFirebaseAuthException(e.code).message;
//     } catch (e) {
//       throw 'Something went wrong. Please try again later. ';
//     }
//   }

//   // function to update any field in specific users collection

//   Future<void> updateSingleField(Map<String, dynamic> json) async {
//     try {
//       await _db
//           .collection("Users")
//           .doc(AuthenticationRepositiries.instance.authUser?.uid)
//           .update(json);
//     } on TFirebaseAuthException catch (e) {
//       throw TFirebaseAuthException(e.code).message;
//     } on TFirebaseException catch (e) {
//       throw TFirebaseException(e.code).message;
//     } on TFormatException catch (_) {
//       throw const TFormatException();
//     } on TPlatformException catch (e) {
//       throw TFirebaseAuthException(e.code).message;
//     } catch (e) {
//       throw 'Something went wrong. Please try again later. ';
//     }
//   }

//   // function to remove user data from firstore
//   Future<void> removeUserRecord(String userId) async {
//     try {
//       await _db.collection("Users").doc(userId).delete();
//     } on TFirebaseAuthException catch (e) {
//       throw TFirebaseAuthException(e.code).message;
//     } on TFirebaseException catch (e) {
//       throw TFirebaseException(e.code).message;
//     } on TFormatException catch (_) {
//       throw const TFormatException();
//     } on TPlatformException catch (e) {
//       throw TFirebaseAuthException(e.code).message;
//     } catch (e) {
//       throw 'Something went wrong. Please try again later. ';
//     }
//   }

//   Future<String> uploadUserImage(String path, XFile image) async {
//     try {
//       final ref = FirebaseStorage.instance.ref(path).child(image.name);
//       await ref.putFile(File(image.path));
//       final url = await ref.getDownloadURL();
//       return url;
//     } on TFirebaseAuthException catch (e) {
//       throw TFirebaseAuthException(e.code).message;
//     } on TFirebaseException catch (e) {
//       throw TFirebaseException(e.code).message;
//     } on TFormatException catch (_) {
//       throw const TFormatException();
//     } on TPlatformException catch (e) {
//       throw TFirebaseAuthException(e.code).message;
//     } catch (e) {
//       throw 'Something went wrong. Please try again later. ';
//     }
//   }
}

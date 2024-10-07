import 'package:esnatch/core/data/repositories/user/user_repository.dart';
import 'package:esnatch/core/utils/popups/loaders.dart';
import 'package:esnatch/features/authentication/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final controller = Get.put(UserRepository());
  Rx<UserModel> user = UserModel.empty().obs;
  final refreshPage = false.obs;

  @override
  void onInit() {
    super.onInit();
    // fetchUserRecord();
  }

  // fetchUserRecord() async {
  //   try {
  //     refreshPage.value = true;
  //     final user = await controller.fetchUserDetails();
  //     this.user(user);
  //   } catch (e) {
  //     UserModel.empty();
  //   } finally {
  //     refreshPage.value = false;
  //   }
  // }

  Future<void> saveUserRecord(UserCredential? userCredential) async {
    // final userRepository = Get.put(UserRepository());
    try {
      // await fetchUserRecord();

      if (user.value.id.isEmpty) {
        if (userCredential != null) {
          final nameParts =
              UserModel.nameParts(userCredential.user!.displayName ?? '');
          final username = UserModel.generateUserName(
              userCredential.user!.displayName ?? '');

          final user = UserModel(
            id: userCredential.user!.uid,
            firstName: nameParts[0],
            lastName:
                nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '',
            username: username,
            email: userCredential.user!.email ?? '',
            phoneNumber: userCredential.user!.phoneNumber ?? ' ',
            proflePicture: userCredential.user!.photoURL ?? '',
          );
          await controller.saveUserData(user);
        }
      }
    } catch (e) {
      TLoaders.errorSnackBar(title: e.toString());
    }
  }
}

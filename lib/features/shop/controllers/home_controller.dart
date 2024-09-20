import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();
  RxInt carouselIndex = 0.obs;
  void updatePageChange(int index) {
    carouselIndex.value = index;
  }
}

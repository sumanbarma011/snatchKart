import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();
  CarouselController controller = CarouselController();
  RxInt carouselIndex = 0.obs;
  void updatePageChange(int index) {
    carouselIndex.value = index;
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:esnatch/core/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:esnatch/core/common/widgets/images_widget/t_rounded_image.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/features/shop/controllers/home_controller.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banners,
  });
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners
              .map(
                (e) => TRoundedImage(
                  imageUrl: e,
                ),
              )
              .toList(),
          options: CarouselOptions(
            onPageChanged: (index, _) => controller.updatePageChange(index),
            viewportFraction: 1,
          ),
        ),
        const SizedBox(
          height: TSizes.md,
        ),
        Center(
          child: Obx(() => Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int i = 0; i < banners.length; i++)
                    TCircularContainer(
                      width: 20,
                      height: 5,
                      backgroundColor: controller.carouselIndex.value == i
                          ? TColors.primary
                          : TColors.grey,
                      margin: const EdgeInsets.only(right: 10),
                    ),
                ],
              )),
        ),
      ],
    );
  }
}

import 'package:esnatch/core/common/widgets/shimmerEffect/shimmer.dart';
import 'package:esnatch/features/personalization/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:esnatch/core/common/widgets/appbar/appbar.dart';
import 'package:esnatch/core/common/widgets/products/product_cart/cart_menu_icon.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return TAppBar(
      showBackArrow: false,
      actions: [
        TCartCounterIcon(
          onPressed: () {},
          color: TColors.white,
        )
      ],
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppBarTitles,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: Colors.grey),
          ),
          Obx(() {
            print('THE NAME IS ${controller.user.value.fullName}');
            if (controller.refreshPage.value) {
              return const TShimmerEffect(width: 20, height: 20);
            }
            return Text(
              controller.user.value.username,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: Colors.white),
            );
          }),
        ],
      ),
    );
  }
}

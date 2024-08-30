import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:esnatch/core/common/widgets/icons/t_circular_icon.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';
import 'package:esnatch/features/shop/screens/cart/cart_screen.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace / 4),
      decoration: BoxDecoration(
        color: isDarkMode ? TColors.darkerGrey : TColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(TSizes.cardRadiusLg),
          topRight: Radius.circular(TSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const TCircularIcon(
                backgroundColor: TColors.darkGrey,
                width: 40,
                height: 40,
                icon: Iconsax.minus,
                size: TSizes.iconMd,
                color: TColors.white,
              ),
              const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              const TCircularIcon(
                backgroundColor: TColors.black,
                width: 40,
                height: 40,
                icon: Iconsax.add,
                size: TSizes.iconMd,
                color: TColors.white,
              ),
            ],
          ),
          SizedBox(
            width: 100,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(TSizes.sm),
                backgroundColor: TColors.black,
                side: const BorderSide(color: TColors.black),
              ),
              onPressed: () {
                Get.to(() => const CartScreen());
              },
              child: const Text('Add to cart'),
            ),
          )
        ],
      ),
    );
  }
}

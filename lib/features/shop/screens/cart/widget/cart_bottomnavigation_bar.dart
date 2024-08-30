import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/features/shop/screens/checkout/checkout_screen.dart';

class CartScreenBottomNavigationBar extends StatelessWidget {
  const CartScreenBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      decoration: const BoxDecoration(
        // color: isDarkMode ? TColors.black : TColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(TSizes.md),
          topRight: Radius.circular(TSizes.md),
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: TColors.primary),
          onPressed: () {
            Get.to(
              () => const CheckoutScreen(),
            );
          },
          child: const Text('Checkout \$325.00'),
        ),
      ),
    );
  }
}

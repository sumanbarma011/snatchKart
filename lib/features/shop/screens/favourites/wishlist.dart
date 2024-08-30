import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:esnatch/core/common/widgets/appbar/appbar.dart';
import 'package:esnatch/core/common/widgets/icons/t_circular_icon.dart';
import 'package:esnatch/core/common/widgets/layouts/grid_layout.dart';
import 'package:esnatch/core/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/features/shop/screens/home/home_screen.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: false,
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        actions: [
          TCircularIcon(
            onPressed: () {
              Get.to(
                () => const HomeScreen(),
              );
            },
            icon: Iconsax.add,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                itemCount: 6,
                itemBuilder: (_, index) => const TProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

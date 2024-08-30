import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:esnatch/core/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:esnatch/core/common/widgets/custom_shapes/container/search_container.dart';
import 'package:esnatch/core/common/widgets/layouts/grid_layout.dart';
import 'package:esnatch/core/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:esnatch/core/common/widgets/texts/section_heading.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/image_strings.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';
import 'package:esnatch/features/shop/screens/all_products/all_products.dart';
import 'package:esnatch/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:esnatch/features/shop/screens/home/widgets/home_categories.dart';
import 'package:esnatch/features/shop/screens/home/widgets/tpromo_sllider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //appbar
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  // search bar
                  TSearchBarContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  //popular categories heading
                  TSectionHeading(
                    padding: EdgeInsets.only(left: TSizes.lg),
                    title: 'Popular Categories',
                    showTextButton: false,
                    textColor: TColors.white,
                  ),
                  SizedBox(
                    height: TSizes.sm,
                  ),
                  // categories
                  THomeCategories(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.defaultSpace, vertical: TSizes.sm),
              child:

                  //customized carousel slider
                  Column(
                children: [
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  TSectionHeading(
                    title: 'Popular Categories',
                    padding: const EdgeInsets.only(left: TSizes.sm),
                    textColor: THelperFunctions.isDarkMode(context)
                        ? TColors.white
                        : TColors.black,
                    showTextButton: true,
                    onPressed: () {
                      Get.to(
                        () => const AllProductsScreen(),
                      );
                    },
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

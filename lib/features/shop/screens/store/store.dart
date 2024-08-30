import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:esnatch/core/common/brands/brand_card.dart';
import 'package:esnatch/core/common/widgets/appbar/appbar.dart';
import 'package:esnatch/core/common/widgets/appbar/tabbar.dart';
import 'package:esnatch/core/common/widgets/custom_shapes/container/search_container.dart';
import 'package:esnatch/core/common/widgets/layouts/grid_layout.dart';
import 'package:esnatch/core/common/widgets/products/product_cart/cart_menu_icon.dart';
import 'package:esnatch/core/common/widgets/texts/section_heading.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';
import 'package:esnatch/features/shop/screens/brand/all_brands.dart';
import 'package:esnatch/features/shop/screens/store/widgets/category_tab.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: isDarkMode ? TColors.black : TColors.white,
        appBar: TAppBar(
          showBackArrow: false,
          actions: [
            TCartCounterIcon(
                color: THelperFunctions.isDarkMode(context)
                    ? TColors.white
                    : TColors.black,
                onPressed: () {})
          ],
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      const TSearchBarContainer(
                        text: 'Search on Store',
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 2,
                      ),
                      TSectionHeading(
                        showTextButton: true,
                        onPressed: () {
                          Get.to(() => const AllBrandsScreen());
                        },
                        title: 'Feature Brands',
                        textColor: THelperFunctions.isDarkMode(context)
                            ? TColors.white
                            : TColors.black,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),
                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return const TBrandCard(
                            showBorder: true,
                          );
                        },
                      )
                    ],
                  ),
                ),
                bottom: const TTabBar(
                  tabs: [
                    Text('Shoe'),
                    Text('Shoe'),
                    Text('Shoe'),
                    Text('Shoe'),
                    Text('Shoe'),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}

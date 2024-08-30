import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:esnatch/core/common/brands/brand_card.dart';
import 'package:esnatch/core/common/widgets/appbar/appbar.dart';
import 'package:esnatch/core/common/widgets/layouts/grid_layout.dart';
import 'package:esnatch/core/common/widgets/texts/section_heading.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/features/shop/screens/brand/brand_products.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TSectionHeading(
                title: 'Brands',
                showTextButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => TBrandCard(
                  showBorder: true,
                  onTap: () {
                    Get.to(() => const BrandProducts());
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:esnatch/core/common/brands/brand_card.dart';
import 'package:esnatch/core/common/widgets/appbar/appbar.dart';
import 'package:esnatch/core/common/widgets/products/sortable_brands/sortable_products.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        title: Text(
          'Nike',
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TBrandCard(showBorder: true),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              TSortableProducts()
            ],
          ),
        ),
      ),
    );
  }
}

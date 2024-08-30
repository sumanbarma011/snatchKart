import 'package:flutter/material.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:esnatch/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:esnatch/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:esnatch/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:esnatch/features/shop/screens/product_details/widgets/rating_and_share.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // product image slider
            TProductImageSlider(),
            // product details

            Padding(
              padding: EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //rating and share
                  TRatingAndShare(),
                  SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  TProductMetaData(),
                  SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  TProductAttributes(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

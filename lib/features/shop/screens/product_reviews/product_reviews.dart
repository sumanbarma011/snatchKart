import 'package:flutter/material.dart';
import 'package:esnatch/core/common/widgets/appbar/appbar.dart';
import 'package:esnatch/core/common/widgets/products/ratings/rating_indicator.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/features/shop/screens/product_reviews/widget/rating_progress_indicator.dart';
import 'package:esnatch/features/shop/screens/product_reviews/widget/user_reviews.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Rating & Reviews',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: TSizes.defaultSpace,
              vertical: TSizes.defaultSpace / 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Rating and Reiviews anre verified and are from the people who use the same type of device that you use.'),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const OverallProductsRating(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const TRatingBarIndicator(
                rating: 4.5,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems / 4,
              ),
              Text(
                ' 12311',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections / 2,
              ),
              const UserReviews()
            ],
          ),
        ),
      ),
    );
  }
}

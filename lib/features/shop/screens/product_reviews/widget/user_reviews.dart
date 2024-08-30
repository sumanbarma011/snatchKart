import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:esnatch/core/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:esnatch/core/common/widgets/products/ratings/rating_indicator.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/image_strings.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';

class UserReviews extends StatelessWidget {
  const UserReviews({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(TImages.user),
                ),
                SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
                Text('John Doe'),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Iconsax.menu_12),
            )
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        const Row(
          children: [
            TRatingBarIndicator(rating: 4.5),
            SizedBox(
              width: TSizes.spaceBtwItems / 4,
            ),
            Text(
              '01-Nov-2023',
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        const ReadMoreText(
          'A product description is a piece of writing that conveys the features and benefits of a product, ranging from basic facts to stories that make a product compelling to an ideal buyer. Its purpose is to give customers important information about a product and persuade them to make a purchase.',
          trimLength: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Show more',
          delimiter: '... ',
          trimExpandedText: 'Show less',
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        TRoundedContainer(
          padding: const EdgeInsets.symmetric(
              horizontal: TSizes.md, vertical: TSizes.lg),
          backgroundColor: isDarkMode ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Epic Fashion',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const Text(
                    '01-Nov-2023',
                  )
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const ReadMoreText(
                'A product description is a piece of writing that conveys the features and benefits of a product, ranging from basic facts to stories that make a product compelling to an ideal buyer. Its purpose is to give customers important information about a product and persuade them to make a purchase.',
                trimLength: 3,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'read more',
                delimiter: '... ',
                trimExpandedText: 'read less',
                lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: TColors.primary),
                moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: TColors.primary),
              ),
            ],
          ),
        )
      ],
    );
  }
}

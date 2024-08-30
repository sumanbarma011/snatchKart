import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:esnatch/core/common/widgets/chips/choice_chip.dart';
import 'package:esnatch/core/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:esnatch/core/common/widgets/texts/product_price_text.dart';
import 'package:esnatch/core/common/widgets/texts/product_title_text.dart';
import 'package:esnatch/core/common/widgets/texts/section_heading.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';
import 'package:esnatch/features/shop/screens/product_reviews/product_reviews.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TRoundedContainer(
          padding: const EdgeInsets.symmetric(
              horizontal: TSizes.md, vertical: TSizes.lg),
          backgroundColor: isDarkMode ? TColors.darkerGrey : TColors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TSectionHeading(
                    padding: EdgeInsets.zero,
                    title: 'Variations :',
                    showTextButton: false,
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                            text: 'Price : ',
                            smallText: true,
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems / 2,
                          ),
                          //actual price
                          Text(
                            '\$20',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems / 2,
                          ),
                          // sale price
                          const TProductPriceText(price: '25')
                        ],
                      ),
                      Row(
                        children: [
                          const TProductTitleText(
                            text: 'Stock : ',
                            smallText: true,
                          ),
                          //stock
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const TProductTitleText(
                text:
                    'This is the description of the the product and this can go upto various lines',
                smallText: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(
              title: 'Colors',
              padding: EdgeInsets.zero,
              showTextButton: false,
            ),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                  text: 'Yellow',
                  selected: true,
                  onSelected: (val) {},
                ),
                TChoiceChip(
                  text: 'Red',
                  selected: false,
                  onSelected: (val) {},
                ),
                TChoiceChip(
                  text: 'Blue',
                  selected: false,
                  onSelected: (val) {},
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(
              title: 'Size',
              padding: EdgeInsets.zero,
              showTextButton: false,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                  text: 'EU 34',
                  selected: true,
                  onSelected: (val) {},
                ),
                TChoiceChip(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (val) {},
                ),
                TChoiceChip(
                  text: 'EU 38',
                  selected: false,
                  onSelected: (val) {},
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            child: const Text('Checkout'),
            onPressed: () {},
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        const TSectionHeading(
          title: 'Description',
          showTextButton: false,
        ),
        const ReadMoreText(
          'A product description is a piece of writing that conveys the features and benefits of a product, ranging from basic facts to stories that make a product compelling to an ideal buyer. Its purpose is to give customers important information about a product and persuade them to make a purchase.',
          trimLength: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Show more',
          delimiter: '... ',
          trimExpandedText: 'Show less',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        const Divider(),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TSectionHeading(
              title: 'Reviews(199)',
              showTextButton: false,
            ),
            IconButton(
              onPressed: () {
                Get.to(
                  () => const ProductReviewsScreen(),
                );
              },
              icon: const Icon(
                Iconsax.arrow_right_3,
                size: 18,
              ),
            )
          ],
        )
      ],
    );
  }
}

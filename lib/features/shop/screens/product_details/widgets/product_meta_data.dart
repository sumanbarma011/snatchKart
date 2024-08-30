import 'package:flutter/material.dart';
import 'package:esnatch/core/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:esnatch/core/common/widgets/images_widget/t_circular_image.dart';
import 'package:esnatch/core/common/widgets/texts/product_price_text.dart';
import 'package:esnatch/core/common/widgets/texts/product_title_text.dart';
import 'package:esnatch/core/common/widgets/texts/t_brand_title_with_verification_icon.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/enums.dart';
import 'package:esnatch/core/utils/constants/image_strings.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TRoundedContainer(
              backgroundColor: TColors.secondary.withOpacity(0.8),
              radius: TSizes.cardRadiusSm,
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: const Text('25%'),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            const TProductPriceText(
              price: '170',
              isLarge: true,
            )
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),
        const TProductTitleText(
          text: 'Green Nike Sports Shirt',
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),
        Row(
          children: [
            const TProductTitleText(text: 'Stock'),
            const SizedBox(
              width: TSizes.spaceBtwItems / 1.5,
            ),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),
        Row(
          children: [
            TCircularImage(
              image: TImages.cosmeticsIcon,
              width: 32,
              height: 32,
              overlayColor: isDarkMode ? TColors.white : TColors.black,
            ),
            const TBrandTitleVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.small,
            )
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:esnatch/core/common/widgets/images_widget/t_rounded_image.dart';
import 'package:esnatch/core/common/widgets/texts/product_title_text.dart';
import 'package:esnatch/core/common/widgets/texts/t_brand_title_with_verification_icon.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/image_strings.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: TRoundedImage(
            width: 60,
            height: 60,
            imageUrl: TImages.productImage1,
            backgroundColor:
                isDarkMode ? TColors.darkerGrey : TColors.grey.withOpacity(0.5),
            padding: const EdgeInsets.all(TSizes.sm),
          ),
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Expanded(
          flex: 7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleVerifiedIcon(title: 'Nike'),
              const TProductTitleText(
                text: 'Green Nike Sports Shoe ',
                // smallText: true,
                maxLines: 1,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Color ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: 'Green ',
                        style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(
                        text: 'Sizes ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: 'EU 34',
                        style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

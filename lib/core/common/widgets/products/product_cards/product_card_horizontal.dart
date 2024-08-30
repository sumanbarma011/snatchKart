import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:esnatch/core/common/styles/shadows_style.dart';
import 'package:esnatch/core/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:esnatch/core/common/widgets/icons/t_circular_icon.dart';
import 'package:esnatch/core/common/widgets/images_widget/t_rounded_image.dart';
import 'package:esnatch/core/common/widgets/texts/product_price_text.dart';
import 'package:esnatch/core/common/widgets/texts/product_title_text.dart';
import 'package:esnatch/core/common/widgets/texts/t_brand_title_with_verification_icon.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/image_strings.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);

    return Container(
      // padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: isDarkMode ? TColors.darkerGrey : TColors.softGrey),
      width: 310,

      padding: const EdgeInsets.all(1),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: TRoundedContainer(
              height: 90,
              padding: const EdgeInsets.only(
                  right: TSizes.sm, left: TSizes.sm, top: TSizes.sm, bottom: 0),
              backgroundColor: isDarkMode ? TColors.dark : TColors.white,
              child: Stack(
                children: [
                  const TRoundedImage(
                    height: 100,
                    imageUrl: TImages.productImage1,
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: 2,
                    child: TRoundedContainer(
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      radius: TSizes.cardRadiusSm,
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        '22%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      width: 30,
                      height: 30,
                      icon: Iconsax.heart5,
                      size: TSizes.md,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: TSizes.sm, top: TSizes.md, bottom: 0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    flex: 2,
                    child: TProductTitleText(
                      text: 'Green Nike Half Sleeves Shirt ',
                      maxLines: 1,
                      smallText: true,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const Expanded(
                    flex: 1,
                    child: TBrandTitleVerifiedIcon(title: 'Nike'),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(
                          child: TProductPriceText(price: '453.33'),
                        ),
                        Container(
                          width: TSizes.iconLg,
                          height: TSizes.iconLg,
                          decoration: const BoxDecoration(
                            color: TColors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.iconXs),
                              bottomRight: Radius.circular(TSizes.iconXs),
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              Iconsax.add,
                              color: TColors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

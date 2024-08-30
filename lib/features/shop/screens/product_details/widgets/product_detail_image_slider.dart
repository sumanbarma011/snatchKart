import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:esnatch/core/common/widgets/appbar/appbar.dart';
import 'package:esnatch/core/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:esnatch/core/common/widgets/icons/t_circular_icon.dart';
import 'package:esnatch/core/common/widgets/images_widget/t_rounded_image.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/image_strings.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);

    return TCurvedEdgeWidget(
      child: Column(
        children: [
          Container(
            color: isDarkMode ? TColors.darkerGrey : TColors.light,
            child: Stack(
              children: [
                const SizedBox(
                  height: 300,
                  child: Padding(
                    padding: EdgeInsets.all(TSizes.defaultSpace * 2),
                    child: Center(
                      child: Image(
                        image: AssetImage(TImages.productImage1),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 20,
                  left: 20,
                  child: SizedBox(
                    height: 80,
                    child: ListView.separated(
                      itemCount: 6,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) => TRoundedImage(
                        imageUrl: TImages.productImage1,
                        padding: const EdgeInsets.all(TSizes.sm),
                        width: 80,
                        backgroundColor:
                            isDarkMode ? TColors.black : TColors.white,
                        border: Border.all(color: TColors.primary),
                      ),
                      separatorBuilder: (_, __) => const SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),
                    ),
                  ),
                ),
                // customized appbar
                const TAppBar(
                  showBackArrow: true,
                  actions: [
                    TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: TSizes.defaultSpace,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:esnatch/core/common/brands/brand_card.dart';
import 'package:esnatch/core/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key,
    required this.images,
  });
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.sm),
      borderColor: TColors.darkGrey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          const TBrandCard(showBorder: false),
          const SizedBox(
            height: TSizes.sm,
          ),
          Row(
            children: images
                .map((e) => brandTopProductImageWidget(e, context))
                .toList(),
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: TRoundedContainer(
      showBorder: true,
      height: 80,
      backgroundColor: THelperFunctions.isDarkMode(context)
          ? TColors.darkGrey
          : TColors.light,
      padding: const EdgeInsets.all(TSizes.sm),
      margin: const EdgeInsets.only(right: TSizes.md),
      child: Image(
        fit: BoxFit.contain,
        image: AssetImage(image),
      ),
    ),
  );
}

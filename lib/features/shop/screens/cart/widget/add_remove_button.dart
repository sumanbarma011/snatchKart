import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:esnatch/core/common/widgets/icons/t_circular_icon.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';

class TProductQuantityWithAddRemove extends StatelessWidget {
  const TProductQuantityWithAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
          icon: Iconsax.minus,
          size: TSizes.md,
          width: 32,
          height: 32,
          // backgroundColor: TColors.accent,
        ),
        SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Text('2'),
        SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        TCircularIcon(
          icon: Iconsax.add,
          size: TSizes.md,
          color: TColors.white,
          width: 32,
          height: 32,
          backgroundColor: TColors.primary,
        ),
      ],
    );
  }
}

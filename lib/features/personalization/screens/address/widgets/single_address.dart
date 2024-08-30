import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:esnatch/core/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectAddress});
  final bool selectAddress;
  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      margin: const EdgeInsets.only(bottom: TSizes.md),
      padding: const EdgeInsets.all(TSizes.md),
      showBorder: true,
      backgroundColor:
          selectAddress ? TColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selectAddress
          ? Colors.transparent
          : isDarkMode
              ? TColors.darkGrey
              : TColors.grey,
      child: Stack(
        children: [
          Positioned(
            right: 5,
            child: Icon(
              selectAddress ? Iconsax.tick_circle5 : null,
              color: selectAddress
                  ? isDarkMode
                      ? TColors.light
                      : TColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Doe',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              const Text('(+22) 288 8723'),
              const SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              const Text('82356 Timmy Coves, South Liana, Marine, 82356 , USA'),
            ],
          )
        ],
      ),
    );
  }
}

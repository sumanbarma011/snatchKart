import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/device/device_utility.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';

class TSearchBarContainer extends StatelessWidget {
  const TSearchBarContainer(
      {super.key,
      this.icon = Iconsax.search_normal,
      required this.text,
      this.showBorder = true,
      this.showBackgroundColor = true,
      this.padding =
          const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace)});
  final IconData? icon;
  final String text;
  final bool showBorder, showBackgroundColor;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: padding,
      child: Container(
        padding: const EdgeInsets.all(TSizes.md),
        width: TDeviceUtils.getScreenWidth(context),
        decoration: BoxDecoration(
            color: showBackgroundColor
                ? isDarkMode
                    ? TColors.black
                    : TColors.white
                : Colors.transparent,
            border: showBorder ? Border.all(color: TColors.grey) : null,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Icon(
              icon,
              color: TColors.darkGrey,
              size: 20,
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}

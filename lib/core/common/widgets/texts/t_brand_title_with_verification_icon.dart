import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:esnatch/core/common/widgets/texts/t_brand_title.text.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/enums.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';

class TBrandTitleVerifiedIcon extends StatelessWidget {
  const TBrandTitleVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = TColors.primary,
    this.textAlign,
    this.brandTextSize = TextSizes.small,
  });
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: TBrandTitleText(
          title: title,
          color: textColor,
          maxlines: maxLines,
          textAlign: textAlign,
          brandTextSize: brandTextSize,
        )),
        const SizedBox(
          width: TSizes.sm,
        ),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: TSizes.iconXs,
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    this.width,
    this.height,
    required this.icon,
    this.onPressed,
    this.size = TSizes.lg,
    this.color,
    this.backgroundColor,
  });
  final double? width;
  final double? height;
  final IconData icon;
  final VoidCallback? onPressed;
  final double? size;
  final Color? color;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : isDarkMode
                ? TColors.black.withOpacity(0.9)
                : TColors.white.withOpacity(0.9),
      ),
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: color,
            size: size,
          ),
        ),
      ),
    );
  }
}

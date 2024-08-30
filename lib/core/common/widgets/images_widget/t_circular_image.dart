import 'package:flutter/material.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage(
      {super.key,
      this.fit = BoxFit.cover,
      required this.image,
      this.isNetworkImage = false,
      this.overlayColor,
      this.backgroundColor,
      this.height = 56,
      this.width = 56,
      this.padding = TSizes.sm});
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;

  final double height, width, padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor ??
            (THelperFunctions.isDarkMode(context)
                ? TColors.black
                : TColors.white),
      ),
      child: Center(
        child: Image(
          image: isNetworkImage
              ? NetworkImage(image)
              : AssetImage(
                  image,
                ) as ImageProvider,
          fit: fit,
          color: overlayColor,
        ),
      ),
    );
  }
}

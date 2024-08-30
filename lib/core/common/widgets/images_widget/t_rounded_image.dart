import 'package:flutter/material.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = false,
    this.border,
    this.backgroundColor,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
  });
  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: height,
        height: width,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            borderRadius: BorderRadius.circular(TSizes.md),
            color: backgroundColor),
        child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(TSizes.md)
                : BorderRadius.circular(0),
            child: Image(
              image: isNetworkImage
                  ? NetworkImage(imageUrl)
                  : AssetImage(imageUrl) as ImageProvider,
            )),
      ),
    );
  }
}

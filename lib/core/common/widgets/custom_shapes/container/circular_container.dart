import 'package:flutter/material.dart';
import 'package:esnatch/core/utils/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.child,
    this.padding = 0,
    this.width = 320,
    this.height = 320,
    this.radius = 320,
    this.margin,
    this.backgroundColor = TColors.white,
  });
  final Widget? child;
  final double? width, height;
  final double radius;
  final double padding;
  final EdgeInsets? margin;

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    required this.color,
    required this.onPressed,
  });
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: isDarkMode ? TColors.white : TColors.black,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Center(
                child: Text(
              '2',
              style: Theme.of(context).textTheme.labelMedium!.apply(
                  fontSizeFactor: 0.8,
                  color: isDarkMode ? TColors.black : TColors.white),
            )),
          ),
        ),
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              Iconsax.shopping_bag,
              color: color,
            )),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    this.showTextButton = true,
    this.textColor,
    required this.title,
    this.buttonTitle = 'View All',
    this.onPressed,
    this.padding = const EdgeInsets.all(0),
  });
  final bool showTextButton;
  final Color? textColor;
  final String title, buttonTitle;
  final void Function()? onPressed;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall!.apply(
                  color:
                      textColor ?? (isDarkMode ? TColors.white : TColors.black),
                ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          if (showTextButton)
            TextButton(
              onPressed: onPressed,
              child: Text(buttonTitle),
            ),
        ],
      ),
    );
  }
}

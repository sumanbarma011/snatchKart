import 'package:flutter/material.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    bool isDark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            indent: 60,
            endIndent: 5,
            // height: 5,
            thickness: 2,
            color: isDark ? TColors.darkGrey : TColors.grey,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            indent: 5,
            endIndent: 60,
            // height: 5,
            thickness: 2,
            color: isDark ? TColors.darkGrey : TColors.grey,
          ),
        ),
      ],
    );
  }
}

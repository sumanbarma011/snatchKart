import 'package:flutter/material.dart';
import 'package:esnatch/core/common/widgets/appbar/appbar.dart';
import 'package:esnatch/core/common/widgets/products/product_cart/cart_menu_icon.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/text_strings.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      showBackArrow: false,
      actions: [
        TCartCounterIcon(
          onPressed: () {},
          color: TColors.white,
        )
      ],
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppBarTitles,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: Colors.grey),
          ),
          Text(
            TTexts.homeAppBarSubTitles,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

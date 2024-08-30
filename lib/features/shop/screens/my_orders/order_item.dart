import 'package:flutter/material.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';

class OrderDateAndShippment extends StatelessWidget {
  const OrderDateAndShippment(
      {super.key,
      this.shipment = true,
      required this.bottomText,
      required this.icon,
      required this.topText});
  final bool shipment;
  final String topText;
  final String bottomText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);

    return Row(
      children: [
        Icon(
          icon,
          color: isDarkMode ? TColors.white : TColors.black,
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                topText,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .apply(color: shipment ? TColors.primary : null),
              ),
              Text(
                bottomText,
                style: Theme.of(context).textTheme.headlineSmall,
              )
            ],
          ),
        )
      ],
    );
  }
}

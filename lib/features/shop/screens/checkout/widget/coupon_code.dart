import 'package:flutter/material.dart';
import 'package:esnatch/core/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      // borderColor: TColors.grey,
      backgroundColor: isDarkMode ? TColors.dark : TColors.white,
      padding: const EdgeInsets.only(
          left: TSizes.md, right: TSizes.sm, top: TSizes.sm, bottom: TSizes.sm),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Have a promo code? Enter here',
                  hintStyle: Theme.of(context).textTheme.bodyLarge,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.transparent),
                foregroundColor: isDarkMode
                    ? TColors.white.withOpacity(0.5)
                    : TColors.black.withOpacity(0.5),
                backgroundColor: TColors.grey,
                padding: const EdgeInsets.symmetric(vertical: TSizes.sm)),
            onPressed: () {},
            child: Text(
              'Apply',
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:esnatch/core/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:esnatch/core/common/widgets/texts/section_heading.dart';
import 'package:esnatch/core/utils/constants/image_strings.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              padding: const EdgeInsets.all(TSizes.sm),
              child: Image.asset(
                TImages.paypal,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              'PayPal',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        )
      ],
    );
  }
}

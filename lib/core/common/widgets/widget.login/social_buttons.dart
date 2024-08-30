import 'package:flutter/material.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/image_strings.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';

class TSocialButton extends StatelessWidget {
  const TSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(30),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: TSizes.lg,
              width: TSizes.lg,
              image: AssetImage(TImages.google),
            ),
          ),
        ),
        const SizedBox(
          width: TSizes.sm,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(30),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: TSizes.lg,
              width: TSizes.lg,
              image: AssetImage(TImages.facebook),
            ),
          ),
        )
      ],
    );
  }
}

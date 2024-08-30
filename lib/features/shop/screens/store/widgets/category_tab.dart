import 'package:flutter/material.dart';
import 'package:esnatch/core/common/brands/brand_showcase.dart';
import 'package:esnatch/core/common/widgets/layouts/grid_layout.dart';
import 'package:esnatch/core/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:esnatch/core/common/widgets/texts/section_heading.dart';
// import 'package:snatch_kart/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/image_strings.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TBrandShowCase(
                images: [
                  TImages.productImage10,
                  TImages.productImage10,
                  TImages.productImage10
                ],
              ),
              const TSectionHeading(
                title: 'You might like',
                padding: EdgeInsets.only(left: 0),
                showTextButton: true,
              ),
              TGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const TProductCardVertical(),
              )
            ],
          ),
        ),
      ],
    );
  }
}

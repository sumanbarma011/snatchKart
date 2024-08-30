import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:esnatch/core/common/widgets/appbar/appbar.dart';
import 'package:esnatch/core/common/widgets/images_widget/t_rounded_image.dart';
import 'package:esnatch/core/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:esnatch/core/common/widgets/texts/section_heading.dart';
// import 'package:snatch_kart/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/image_strings.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';

class SubCategories extends StatelessWidget {
  const SubCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Sports'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TRoundedImage(
                imageUrl: TImages.banner3,
                applyImageRadius: true,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections / 2,
              ),
              const TSectionHeading(
                title: 'Sports Equipment',
                padding: EdgeInsets.only(left: TSizes.sm),
                showTextButton: true,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections / 2,
              ),
              SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (_, __) => const TProductCardHorizontal(),
                  itemCount: 10,
                  separatorBuilder: (_, __) => const SizedBox(
                    // color: TColors.white,
                    width: TSizes.spaceBtwSections / 2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

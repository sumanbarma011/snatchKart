import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:esnatch/core/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:esnatch/core/utils/constants/image_strings.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/features/shop/screens/sub_category/sub_categories.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 130,
        // color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.only(left: TSizes.md),
          child: ListView.builder(
            itemCount: 9,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) => TVerticalImageText(
              text: 'Shoe',
              image: TImages.shoeIcon,
              onTap: () {
                Get.to(() => const SubCategories());
              },
            ),
          ),
        ));
  }
}

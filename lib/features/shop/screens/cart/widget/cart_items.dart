import 'package:flutter/material.dart';
import 'package:esnatch/core/common/widgets/texts/product_price_text.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/features/shop/screens/cart/widget/add_remove_button.dart';
import 'package:esnatch/features/shop/screens/cart/widget/cart_item.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddAndRemoveButton = true,
  });
  final bool showAddAndRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (_, index) => Column(
              children: [
                const TCartItem(),
                if (showAddAndRemoveButton)
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                if (showAddAndRemoveButton)
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 70,
                          ),
                          TProductQuantityWithAddRemove(),
                        ],
                      ),
                      TProductPriceText(price: '256.35'),
                    ],
                  )
              ],
            ),
        separatorBuilder: (_, __) => const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
        itemCount: 2);
  }
}

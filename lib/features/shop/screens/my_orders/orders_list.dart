import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:esnatch/core/common/widgets/appbar/appbar.dart';
import 'package:esnatch/core/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';
import 'package:esnatch/features/shop/screens/my_orders/order_item.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final isDarkMode = THelperFunctions.isDarkMode(context);
    return const Scaffold(
      appBar: TAppBar(
        title: Text('My Orders'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [OrderItemLists()],
          ),
        ),
      ),
    );
  }
}

class OrderItemLists extends StatelessWidget {
  const OrderItemLists({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);

    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (_, __) => TRoundedContainer(
              showBorder: true,
              backgroundColor: isDarkMode ? TColors.dark : TColors.light,
              padding: const EdgeInsets.all(TSizes.md),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        child: OrderDateAndShippment(
                          topText: 'Processing',
                          bottomText: '07 Nov 2023',
                          icon: Iconsax.ship,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Iconsax.arrow_right_34),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: OrderDateAndShippment(
                          topText: 'Order',
                          shipment: false,
                          icon: Iconsax.tag,
                          bottomText: '[#1da0d]',
                        ),
                      ),
                      Expanded(
                        child: OrderDateAndShippment(
                          topText: 'Shipping Date',
                          icon: Iconsax.calendar,
                          shipment: false,
                          bottomText: '07 Nov 2023',
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
        separatorBuilder: (_, __) => const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
        itemCount: 10);
  }
}

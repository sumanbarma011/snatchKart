import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:esnatch/core/common/widgets/appbar/appbar.dart';
import 'package:esnatch/core/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:esnatch/core/common/widgets/success_screen/success_screen.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/image_strings.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/features/shop/screens/cart/widget/cart_items.dart';
import 'package:esnatch/features/shop/screens/checkout/widget/billing_address_section.dart';
import 'package:esnatch/features/shop/screens/checkout/widget/billing_payment_section.dart';
import 'package:esnatch/features/shop/screens/checkout/widget/coupon_code.dart';
import 'package:esnatch/navigation_menu.dart';
import 'widget/billing_price_section.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TCartItems(
                showAddAndRemoveButton: false,
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TCouponCode(),
              TCouponCode(),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              TRoundedContainer(
                showBorder: true,
                borderColor: TColors.grey,
                padding: EdgeInsets.all(TSizes.sm),
                child: Column(
                  children: [
                    TBillingPaymentSection(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    Divider(),
                    TBillingPriceSection(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    TBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            child: const Text('Checked \$344.56'),
            onPressed: () {
              Get.to(() => SuccessScreen(
                  image: TImages.successfulPaymentIcon,
                  title: 'Payment Success',
                  subtitle: 'Your item will be shipped soon',
                  onPressed: () {
                    Get.offAll(() => const NavigationMenu());
                  }));
            },
          ),
        ),
      ),
    );
  }
}

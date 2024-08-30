import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:esnatch/core/common/widgets/appbar/appbar.dart';
import 'package:esnatch/core/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:esnatch/core/common/widgets/list_tiles/settings_menu_title.dart';
import 'package:esnatch/core/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:esnatch/core/common/widgets/texts/section_heading.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/features/personalization/screens/address/user_address.dart';
import 'package:esnatch/features/shop/screens/my_orders/orders_list.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    showBackArrow: false,
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),
                  const TUserProfileTile(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  )
                ],
              ),
            ),
            const TSectionHeading(
              title: 'Account Settings',
              padding: EdgeInsets.only(left: TSizes.defaultSpace),
              showTextButton: true,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            SettingsMenuListTitle(
                icon: Iconsax.safe_home,
                title: 'My Addresses',
                onTap: () {
                  Get.to(() => const UserAddressScreen());
                },
                subTitlte: 'Set shopping delivery address'),
            const SettingsMenuListTitle(
                icon: Iconsax.shopping_cart,
                title: 'My cart',
                subTitlte: 'Add, remove product and remove to checkbox'),
            SettingsMenuListTitle(
                onTap: () {
                  Get.to(() => const OrderScreen());
                },
                icon: Iconsax.bag_tick,
                title: 'My Orders',
                subTitlte: 'In progress and completed orders'),
            const SettingsMenuListTitle(
                icon: Iconsax.bank,
                title: 'Bank Account',
                subTitlte: 'Withdraw balance to register bank acount'),
            const SettingsMenuListTitle(
                icon: Iconsax.discount_shape,
                title: 'My Coupons',
                subTitlte: 'List of all the discountedc coupons'),
            const SettingsMenuListTitle(
                icon: Iconsax.notification,
                title: 'Notifications',
                subTitlte: 'Set any kind of notification message'),
            const SettingsMenuListTitle(
                icon: Iconsax.security_card,
                title: 'Account Privacy',
                subTitlte: 'Message data usages and connected accounts'),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            const TSectionHeading(
              title: 'App Settings',
              padding: EdgeInsets.only(left: TSizes.defaultSpace),
              showTextButton: false,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            SettingsMenuListTitle(
              icon: Iconsax.image,
              title: 'Load Data',
              subTitlte: 'Upload to your cloud firebase',
              trailing: Switch(value: true, onChanged: (newValue) {}),
            ),
            SettingsMenuListTitle(
              icon: Iconsax.image,
              title: 'Geo Location',
              subTitlte: 'Set recommendation based on location',
              trailing: Switch(value: true, onChanged: (newValue) {}),
            ),
            SettingsMenuListTitle(
              icon: Iconsax.security_user,
              title: 'Safe Mode',
              subTitlte: 'Search result is safe for all the ages',
              trailing: Switch(value: true, onChanged: (newValue) {}),
            ),
            SettingsMenuListTitle(
              icon: Iconsax.image,
              title: 'HD Image Quality',
              subTitlte: 'Set image quality to be seen',
              trailing: Switch(value: true, onChanged: (newValue) {}),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('LogOut'),
                ),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections * 2.5,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';
import 'package:esnatch/features/personalization/screens/settings/settings.dart';
import 'package:esnatch/features/shop/screens/favourites/wishlist.dart';
import 'package:esnatch/features/shop/screens/home/home_screen.dart';
import 'package:esnatch/features/shop/screens/store/store.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(
      NavigationController(),
    );
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 0,
          height: 60,
          selectedIndex: controller.index.value,
          onDestinationSelected: (value) {
            controller.index.value = value;
          },
          backgroundColor: isDark ? TColors.black : TColors.white,
          indicatorColor: isDark
              ? TColors.white.withOpacity(0.1)
              : TColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(
        () => controller.screen[controller.index.value],
      ),
    );
  }
}

class NavigationController extends GetxController {
  final RxInt index = 0.obs;
  final screen = [
    const HomeScreen(),
    const StoreScreen(),
    const FavouritesScreen(),
    const SettingsScreen()
  ];
}

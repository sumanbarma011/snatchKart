import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/device/device_utility.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar(
      {super.key,
      this.title,
      this.showBackArrow = true,
      this.leadingData,
      this.actions,
      this.leadingOnPressed});
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingData;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.all(TSizes.sm),
      child: AppBar(
          automaticallyImplyLeading: false, // removes back button
          title: title,
          actions: actions,
          leading: showBackArrow
              ? IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Iconsax.arrow_left,
                    color: isDarkMode ? TColors.white : TColors.dark,
                  ),
                )
              : leadingData != null
                  ? IconButton(
                      onPressed: leadingOnPressed,
                      icon: Icon(leadingData),
                    )
                  : null),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
        TDeviceUtils.getAppBarHeight(),
      );
}

import 'package:esnatch/features/personalization/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/image_strings.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Anjal Maharjan',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.white),
      ),
      subtitle: Text(
        'maharjananjal011.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),
      ),
      tileColor: Colors.red,
      trailing: IconButton(
        onPressed: () {
          Get.to(() => const ProfileScreen());
        },
        icon: const Icon(
          Iconsax.edit,
          color: TColors.white,
        ),
      ),
      leading: const CircleAvatar(
        backgroundImage: AssetImage(
          TImages.user,
        ),
      ),
    );
  }
}

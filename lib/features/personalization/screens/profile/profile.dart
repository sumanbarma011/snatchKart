import 'package:esnatch/core/common/widgets/appbar/appbar.dart';
import 'package:esnatch/core/common/widgets/images_widget/t_circular_image.dart';
import 'package:esnatch/core/common/widgets/texts/section_heading.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/image_strings.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  TCircularImage(
                    image: TImages.user,
                    height: 100,
                    width: 100,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Change Profile Picture'),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            const Divider(),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            const TSectionHeading(
              title: 'Profile Information',
              showTextButton: false,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            TProfileMenu(
              title: 'Name',
              value: 'Suman Barma',
              onPressed: () {},
            ),
            TProfileMenu(
              title: 'Username',
              value: 'Suman011',
              onPressed: () {},
            ),
            const Divider(),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            const TSectionHeading(
              title: 'Personal Information',
              showTextButton: false,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            TProfileMenu(
              title: 'User Id',
              value: '29135',
              onPressed: () {},
              icon: Iconsax.copy,
            ),
            TProfileMenu(
              title: 'Email',
              value: 'Suman011',
              onPressed: () {},
            ),
            TProfileMenu(
              title: 'Phone number',
              value: '+977 98264650455',
              onPressed: () {},
            ),
            TProfileMenu(
              title: 'Gender',
              value: 'Male',
              onPressed: () {},
            ),
            TProfileMenu(
              title: 'Date of birth',
              value: '2001-09-05',
              onPressed: () {},
            ),
            Divider(),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Close Account',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(color: TColors.error),
                ))
          ],
        ),
      ),
    );
  }
}

class TProfileMenu extends StatelessWidget {
  const TProfileMenu(
      {super.key,
      required this.title,
      required this.value,
      required this.onPressed,
      this.icon = Iconsax.arrow_right_14});
  final String title;
  final String value;
  final void Function() onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
                color: const Color.fromARGB(255, 99, 97, 97),
                size: TSizes.fontSizeMd,
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:esnatch/core/common/widgets/appbar/appbar.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/features/personalization/screens/address/widgets/add_new_address_screen.dart';
import 'package:esnatch/features/personalization/screens/address/widgets/single_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TSingleAddress(selectAddress: true),
              TSingleAddress(selectAddress: false)
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColors.primary,
        onPressed: () {
          Get.to(
            () => const TAddNewAddressScreen(),
          );
        },
        child: const Icon(
          Iconsax.add,
          color: TColors.white,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:esnatch/core/common/widgets/appbar/appbar.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';

class TAddNewAddressScreen extends StatelessWidget {
  const TAddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Add new Address',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            TSizes.defaultSpace,
          ),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Iconsax.user,
                      ),
                      labelText: 'Name'),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwInputFields,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Iconsax.mobile,
                      ),
                      labelText: 'Phone Number'),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwInputFields,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Iconsax.building_31,
                            ),
                            labelText: 'Street'),
                      ),
                    ),
                    const SizedBox(
                      width: TSizes.spaceBtwInputFields,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Iconsax.code,
                            ),
                            labelText: 'Postal Code'),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: TSizes.spaceBtwInputFields,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Iconsax.building,
                            ),
                            labelText: 'City'),
                      ),
                    ),
                    const SizedBox(
                      width: TSizes.spaceBtwInputFields,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Iconsax.activity,
                            ),
                            labelText: 'Street'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: TSizes.spaceBtwInputFields,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Iconsax.global,
                      ),
                      labelText: 'Country'),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwInputFields,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: TColors.primary),
                    onPressed: () {},
                    child: const Text('Save'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

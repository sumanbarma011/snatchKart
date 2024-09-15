import 'package:esnatch/core/utils/validators/validation.dart';
import 'package:esnatch/features/authentication/controller/signup/signup_controller.dart';
import 'package:esnatch/features/authentication/screens/signUp/widgets/terms_condition_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/constants/text_strings.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Form(
      key: controller.signUpFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  expands: false,
                  validator: (value) =>
                      TValidator.validateEmptyText('First Name', value),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    label: Text(TTexts.firstName),
                  ),
                ),
              ),
              const SizedBox(
                width: TSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      TValidator.validateEmptyText('Last Name', value),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.personalcard),
                    label: Text(TTexts.lastName),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            controller: controller.username,
            validator: (value) =>
                TValidator.validateEmptyText('User Name', value),
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              label: Text(TTexts.userName),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            controller: controller.email,
            validator: (value) => TValidator.validateEmail(value),
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct),
              label: Text(TTexts.email),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => TValidator.validatePhoneNumber(value),
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              label: Text(TTexts.phoneNo),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          Obx(
            () => TextFormField(
              controller: controller.password,
              obscureText: controller.hide.value,
              validator: (value) => TValidator.validatePassword(value),
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.password_check),
                label: const Text(TTexts.password),
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.hide.value = !controller.hide.value;
                  },
                  icon: Icon(
                      controller.hide.value ? Iconsax.eye_slash : Iconsax.eye),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: TSizes.lg,
          ),
          //checkbox and terms and conditions
          const TTermsConditionAndCheckBox(),

          const SizedBox(
            height: TSizes.md,
          ),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () =>
                  // print('========== sign up ==========');
                  controller.signUp(),
              child: const Text(
                TTexts.signIn,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

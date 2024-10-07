import 'package:esnatch/core/utils/validators/validation.dart';
import 'package:esnatch/features/authentication/controller/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/constants/text_strings.dart';
import 'package:esnatch/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:esnatch/features/authentication/screens/signUp/sign_up.dart';

class TLoginForm extends StatefulWidget {
  const TLoginForm({super.key});

  @override
  State<TLoginForm> createState() => _TLoginFormState();
}

class _TLoginFormState extends State<TLoginForm> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LogInController());
    return Form(
      key: controller.signInFormKey,
      child: Column(
        children: [
          TextFormField(
            controller: controller.email,
            validator: (value) => TValidator.validateEmail(value),
            decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.direct_right),
                labelText: TTexts.email,
                labelStyle: Theme.of(context).textTheme.bodyMedium,
                hintText: TTexts.email,
                hintStyle: Theme.of(context).textTheme.bodySmall),
          ),
          const SizedBox(
            height: TSizes.defaultSpace,
          ),
          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) =>
                  TValidator.validateEmptyText('Password', value),
              obscureText: controller.hide.value,
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.password_check),
                hintText: TTexts.password,
                label: const Text(TTexts.password),
                hintStyle: Theme.of(context).textTheme.bodySmall,
                suffixIcon: GestureDetector(
                  onTap: () {
                    controller.hide.value = !controller.hide.value;
                  },
                  child: Icon(
                      controller.hide.value ? Iconsax.eye_slash : Iconsax.eye),
                ),
              ),
            ),
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputFields / 2,
          ),
          // Remember me and forgot password
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Row(
                    children: [
                      Checkbox(
                        value: controller.rememberMe.value,
                        onChanged: (newvalue) {
                          controller.rememberMe.value =
                              !controller.rememberMe.value;
                        },
                      ),
                      const Text(
                        TTexts.rememberMe,
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => const ForgetPassword());
                  },
                  child: const Text(
                    TTexts.forgotPassword,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                controller.emailAndPasswordSignIn();
              },
              child: const Text(
                TTexts.signIn,
              ),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                Get.to(
                  () => const SighUpScreen(),
                );
              },
              child: const Text(
                TTexts.createAccount,
              ),
            ),
          )
        ],
      ),
    );
  }
}

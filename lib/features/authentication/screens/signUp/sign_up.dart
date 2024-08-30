import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:esnatch/core/common/widgets/widget.login/form_divider.dart';
import 'package:esnatch/core/common/widgets/widget.login/social_buttons.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/constants/text_strings.dart';
import 'package:esnatch/features/authentication/screens/signUp/widgets/sign_up_form.dart';
import 'package:esnatch/features/authentication/screens/signUp/widgets/terms_condition_checkbox.dart';
import 'package:esnatch/features/authentication/screens/verificationEmailScreen/verification_email.dart';

class SighUpScreen extends StatelessWidget {
  const SighUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              //form
              const TSignUpForm(),

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
                  onPressed: () {
                    Get.to(
                      () => const VerficationEmailScreen(),
                    );
                  },
                  child: const Text(
                    TTexts.signIn,
                  ),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // divider
              const TFormDivider(
                dividerText: "  ${TTexts.orSignInWith} ",
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              //footer
              const TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:esnatch/core/data/repositories/repositories.authentication/authentication_repositiries.dart';
import 'package:esnatch/features/authentication/controller/signup/verify_email.controller.dart';
// import 'package:esnatch/features/authentication/screens/logIn/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:esnatch/core/utils/constants/image_strings.dart';
import 'package:esnatch/core/utils/constants/sizes.dart';
import 'package:esnatch/core/utils/constants/text_strings.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';

class VerficationEmailScreen extends StatelessWidget {
  const VerficationEmailScreen({super.key, required this.email});
  final String? email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(EmailVerificationController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => AuthenticationRepositiries.instance.logOut(),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(
                  TImages.deliveredEmailIllustration,
                ),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              Text(
                TTexts.confirmedEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                email ?? ' ',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                TTexts.confirmedEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              SizedBox(
                width: THelperFunctions.screenWidth(),
                child: ElevatedButton(
                  onPressed: () => controller.checkEmailVerificationStatus(),
                  child: const Text(TTexts.tContinue),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              SizedBox(
                width: THelperFunctions.screenWidth(),
                child: TextButton(
                  onPressed: () => controller.sendEmailVerification(),
                  child: const Text(TTexts.resendEmail),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

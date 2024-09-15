import 'package:esnatch/features/authentication/controller/signup/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:esnatch/core/utils/constants/colors.dart';
import 'package:esnatch/core/utils/constants/text_strings.dart';
import 'package:esnatch/core/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class TTermsConditionAndCheckBox extends StatelessWidget {
  const TTermsConditionAndCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    final controller = Get.put(SignUpController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Obx(
          () => SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(
              value: controller.privacyPolicy.value,
              onChanged: (newvalue) {
                controller.privacyPolicy.value =
                    !controller.privacyPolicy.value;
              },
            ),
          ),
        ),
        const SizedBox(
          width: 2,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: ' ${TTexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: TTexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodySmall!.apply(
                      color: darkMode ? Colors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                    ),
              ),
              TextSpan(
                  text: ' and ', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: TTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodySmall!.apply(
                      color: darkMode ? Colors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

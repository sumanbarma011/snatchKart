import "package:flutter/material.dart";
import "package:esnatch/core/common/styles/spacing_styles.dart";
import "package:esnatch/core/common/widgets/widget.login/form_divider.dart";
import "package:esnatch/core/common/widgets/widget.login/social_buttons.dart";
import "package:esnatch/core/utils/constants/sizes.dart";
import "package:esnatch/core/utils/constants/text_strings.dart";
import "package:esnatch/features/authentication/screens/logIn/widgets/login_form.dart";
import "package:esnatch/features/authentication/screens/logIn/widgets/login_header.dart";

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              TLogInHeader(),
              SizedBox(
                height: TSizes.defaultSpace,
              ),
              //Form
              TLoginForm(),
              SizedBox(
                height: TSizes.md,
              ),

              // divider
              TFormDivider(
                dividerText: "  ${TTexts.orSignInWith} ",
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              //footer
              TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}

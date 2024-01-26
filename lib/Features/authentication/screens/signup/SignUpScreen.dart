import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Common/widgets/login_signup/form_divider.dart';
import 'package:tsports/Common/widgets/login_signup/mySocialButtons.dart';
import 'package:tsports/Features/authentication/screens/signup/widgets/signupForm.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/sizes.dart';
import 'package:tsports/Utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = myHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(mySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                myTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: mySizes.spaceBtwSections,
              ),

              /// Form
              mySignUpForm(),

              SizedBox(
                height: mySizes.spaceBtwSections,
              ),

              /// Divider
              myFormDivider(
                dark: dark,
                dividertext: myTexts.orSignUpWith,
              ),

              SizedBox(
                height: mySizes.spaceBtwSections,
              ),

              /// Social Button
              mySocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

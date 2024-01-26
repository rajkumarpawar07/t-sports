import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tsports/Common/styles/spacing_style.dart';
import 'package:tsports/Common/widgets/login_signup/form_divider.dart';
import 'package:tsports/Common/widgets/login_signup/mySocialButtons.dart';
import 'package:tsports/Features/authentication/screens/login/widgets/login_form.dart';
import 'package:tsports/Features/authentication/screens/login/widgets/login_header.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';
import 'package:tsports/Utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = myHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: mySpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// logo, title and subTitle
              myLoginHeader(dark: dark),

              /// Form
              const myLoginForm(),

              /// Divider
              myFormDivider(
                dark: dark,
                dividertext: myTexts.orSigninwith,
              ),
              const SizedBox(
                height: mySizes.spaceBtwSections,
              ),

              /// Footer
              const mySocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

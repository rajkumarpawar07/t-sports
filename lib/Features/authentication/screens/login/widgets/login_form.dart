import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Features/authentication/screens/password_configuration/ForgetPasswordScreen.dart';
import 'package:tsports/Features/authentication/screens/signup/SignUpScreen.dart';
import 'package:tsports/NavigationMenu.dart';
import 'package:tsports/Utils/constants/sizes.dart';
import 'package:tsports/Utils/constants/text_strings.dart';

class myLoginForm extends StatelessWidget {
  const myLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: mySizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: myTexts.email),
            ),
            const SizedBox(
              height: mySizes.spaceBtwInputFields,
            ),

            /// Password
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash),
                  labelText: myTexts.password),
            ),
            const SizedBox(
              height: mySizes.spaceBtwInputFields / 2,
            ),

            /// remember me and forget password
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              // remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(myTexts.rememberMe),
                ],
              ),

              /// forget password
              TextButton(
                  onPressed: () => Get.to(() => const ForgetPasswordScreen()),
                  child: const Text(myTexts.forgetPassword)),
            ]),

            const SizedBox(
              height: mySizes.spaceBtwSections,
            ),

            /// Sign In Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const NavigationMenu()),
                    child: const Text(myTexts.signIn))),
            const SizedBox(
              height: mySizes.spaceBtwSections,
            ),

            /// craete account button
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () => Get.to(() => const SignUpScreen()),
                    child: const Text(myTexts.createAccount))),

            const SizedBox(
              height: mySizes.spaceBtwSections,
            )
          ],
        ),
      ),
    );
  }
}

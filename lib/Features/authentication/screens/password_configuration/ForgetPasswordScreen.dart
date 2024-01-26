import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Features/authentication/screens/password_configuration/ResetPasswordScreen.dart';
import 'package:tsports/Utils/constants/sizes.dart';
import 'package:tsports/Utils/constants/text_strings.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(mySizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// heading
            Text(
              myTexts.forgetPassword,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: mySizes.spaceBtwItems,
            ),
            Text(
              myTexts.forgetPasswordSubtitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: mySizes.spaceBtwSections,
            ),

            /// Textfields
            TextFormField(
              decoration: const InputDecoration(
                  labelText: myTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(
              height: mySizes.spaceBtwSections,
            ),

            /// submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPasswordScreen()),
                child: const Text(myTexts.submit),
              ),
            )
          ],
        ),
      ),
    );
  }
}

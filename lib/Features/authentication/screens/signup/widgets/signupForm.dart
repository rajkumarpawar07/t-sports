import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Features/authentication/screens/signup/VerfyEmailScreen.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/sizes.dart';
import 'package:tsports/Utils/constants/text_strings.dart';

class mySignUpForm extends StatelessWidget {
  const mySignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = myHelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: myTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: mySizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: myTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: mySizes.spaceBtwInputFields,
          ),

          /// UserName testfield
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: myTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(
            height: mySizes.spaceBtwInputFields,
          ),

          /// Email testfield
          TextFormField(
            decoration: const InputDecoration(
              labelText: myTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),

          const SizedBox(
            height: mySizes.spaceBtwInputFields,
          ),

          /// Phone testfield
          TextFormField(
            decoration: const InputDecoration(
              labelText: myTexts.username,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),

          const SizedBox(
            height: mySizes.spaceBtwInputFields,
          ),

          /// password textfield
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: myTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
              prefixIcon: Icon(Iconsax.password_check),
            ),
          ),

          const SizedBox(
            height: mySizes.spaceBtwSections,
          ),

          /// Terms and conditions
          Row(
            children: [
              SizedBox(
                  width: 24,
                  height: 24,
                  child: Checkbox(value: true, onChanged: (value) {})),
              const SizedBox(
                width: mySizes.spaceBtwItems,
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: '${myTexts.iAgreeTo}',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: myTexts.privacyPolicy,
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? myColors.white : myColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            dark ? myColors.white : myColors.primary)),
                TextSpan(
                    text: '${myTexts.and}',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: myTexts.termsToUse,
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? myColors.white : myColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            dark ? myColors.white : myColors.primary)),
              ]))
            ],
          ),
          const SizedBox(
            height: mySizes.spaceBtwSections,
          ),

          /// Sign In Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerfyEmailScreen()),
              child: const Text(myTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}

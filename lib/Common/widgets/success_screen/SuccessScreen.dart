import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';
import 'package:tsports/Common/styles/spacing_style.dart';
import 'package:tsports/Features/authentication/screens/login/LoginScreen.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';
import 'package:tsports/Utils/constants/text_strings.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.Title,
      required this.LottieImage,
      required this.SubTitle,
      this.onPressed});

  final String Title, LottieImage, SubTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: mySpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              /// Image
              Lottie.asset(
                LottieImage,
                width: myHelperFunctions.screenWidth() * 0.8,
              ),
              const SizedBox(
                height: mySizes.spaceBtwSections,
              ),

              /// Title and button
              Text(
                Title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: mySizes.spaceBtwItems,
              ),
              Text(
                SubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: mySizes.spaceBtwSections,
              ),

              /// buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(
                    myTexts.myContinue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

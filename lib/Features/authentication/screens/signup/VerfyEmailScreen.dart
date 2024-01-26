import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:tsports/Common/widgets/success_screen/SuccessScreen.dart';
import 'package:tsports/Features/authentication/screens/login/LoginScreen.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';
import 'package:tsports/Utils/constants/text_strings.dart';

class VerfyEmailScreen extends StatelessWidget {
  const VerfyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(mySizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Lottie.asset(
                myImages.verifyPasswordImage,
                width: myHelperFunctions.screenWidth() * 0.8,
              ),
              const SizedBox(
                height: mySizes.spaceBtwSections,
              ),

              /// Title and button
              Text(
                myTexts.verifyEmailHeadline,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: mySizes.spaceBtwItems,
              ),
              Text(
                "pawarrajkumar0707@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: mySizes.spaceBtwItems,
              ),
              Text(
                myTexts.verifyEmailsubTitle,
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
                  onPressed: () => Get.to(() => SuccessScreen(
                        Title: myTexts.yourAccountCreatedTitle,
                        LottieImage: myImages.confirmedEmailAnimation,
                        SubTitle: myTexts.yourAccountCreatedSubTitle,
                        onPressed: () => Get.to(() => const LoginScreen()),
                      )),
                  child: const Text(
                    myTexts.myContinue,
                  ),
                ),
              ),
              const SizedBox(
                height: mySizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    myTexts.myResend,
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

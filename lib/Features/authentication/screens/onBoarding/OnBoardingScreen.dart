import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tsports/Features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:tsports/Features/authentication/screens/onBoarding/widgets/onboarding_page.dart';
import 'package:tsports/Features/authentication/screens/onBoarding/widgets/onboarding_skip_button.dart';
import 'package:tsports/Features/authentication/screens/onBoarding/widgets/onboarding_dot_navigation.dart';
import 'package:tsports/Features/authentication/screens/onBoarding/widgets/onboarding_next_page_button.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: const [
                OnBoardingPage(
                  image: myImages.onBoardingImage1,
                  title: myTexts.onBoardingTitle1,
                  subtitle: myTexts.onBoardingSubTitle1,
                ),
                OnBoardingPage(
                  image: myImages.onBoardingImage2,
                  title: myTexts.onBoardingTitle2,
                  subtitle: myTexts.onBoardingSubTitle2,
                ),
                OnBoardingPage(
                  image: myImages.onBoardingImage3,
                  title: myTexts.onBoardingTitle3,
                  subtitle: myTexts.onBoardingSubTitle3,
                ),
              ]),

          //skip button
          const OnBoardingSkipButton(),

          // smooth page indicator
          const OnBoardingDotNavigation(),

          // circular button
          const OnBoardingNextPageButton(),
        ],
      ),
    );
  }
}

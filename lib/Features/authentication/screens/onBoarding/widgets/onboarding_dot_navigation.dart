import 'package:flutter/cupertino.dart';
import 'package:tsports/Features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:tsports/Utils/Device/device_utility.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = myHelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: myDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: mySizes.defaultSpace,
        child: SmoothPageIndicator(
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? myColors.light : myColors.dark,
              dotHeight: 6),
          count: 3,
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
        ));
  }
}

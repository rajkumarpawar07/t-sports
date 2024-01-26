import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:tsports/Utils/Device/device_utility.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: myDeviceUtils.getAppBarHeight(),
        right: mySizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: Text("Skip"),
        ));
  }
}

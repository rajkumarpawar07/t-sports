import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Containers/primary_header_constiner.dart';
import 'package:tsports/Common/widgets/appbar/appbar.dart';
import 'package:tsports/Common/widgets/images/app_rounded_images.dart';
import 'package:tsports/Common/widgets/images/app_rounded_small_image.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --- header
            appPrimaryHeaderConatiner(
                child: Column(
              children: [
                /// -- Appbar
                appAppBar(
                  title: Text(
                    "Account",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: myColors.white),
                  ),
                ),
                const SizedBox(height: mySizes.spaceBtwSections),

                /// -- user profile tile
                ListTile(
                  leading: appRoundedSmallImage(
                    image: myImages.userProfile,
                    height: 50,
                    width: 50,
                    padding: 0,
                  ),
                ),

                const SizedBox(height: mySizes.spaceBtwSections),
              ],
            ))

            /// --- body
          ],
        ),
      ),
    );
  }
}

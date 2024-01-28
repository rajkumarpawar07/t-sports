import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Curved_Edges/curved_edges_widget.dart';
import 'package:tsports/Common/widgets/appbar/appbar.dart';
import 'package:tsports/Common/widgets/icons/circular_icon.dart';
import 'package:tsports/Common/widgets/images/app_rounded_images.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class appProductImageSlider extends StatelessWidget {
  const appProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = myHelperFunctions.isDarkMode(context);

    return appCurvedEdgesWidget(
      child: Container(
        color: isDark ? myColors.darkerGrey : myColors.light,
        child: Stack(
          children: [
            /// main large image
            SizedBox(
              height: 390,
              child: Center(
                child: Image(image: AssetImage(myImages.productDetailImage2)),
              ),
            ),

            /// Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: mySizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (_, __) => SizedBox(
                    width: mySizes.spaceBtwItems,
                  ),
                  itemBuilder: (_, index) => appRoundedImage(
                      width: 80,
                      backgroundColor: isDark ? myColors.dark : myColors.white,
                      border: Border.all(color: myColors.primary),
                      padding: EdgeInsets.all(mySizes.sm),
                      imageUrl: myImages.productDetailImage1),
                ),
              ),
            ),

            appAppBar(
              showBackArrow: true,
              actions: [
                appCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

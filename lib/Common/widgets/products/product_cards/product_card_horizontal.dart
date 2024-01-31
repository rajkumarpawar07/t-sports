import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Containers/circular_container.dart';
import 'package:tsports/Common/widgets/icons/circular_icon.dart';
import 'package:tsports/Common/widgets/images/app_rounded_images.dart';
import 'package:tsports/Common/widgets/texts/brand_title_with_icon.dart';
import 'package:tsports/Common/widgets/texts/product_price_text.dart';
import 'package:tsports/Common/widgets/texts/product_title_texts.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class appProductCardHorizontal extends StatelessWidget {
  const appProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = myHelperFunctions.isDarkMode(context);

    return Container(
      width: 290,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(mySizes.productImageRadius),
        color: isDark ? myColors.darkerGrey : myColors.softGrey,
      ),
      child: Row(
        children: [
          /// thumbnail
          appCircularContainer(
            width: 132,
            height: 120,
            // padding: const EdgeInsets.only(left: mySizes.md, right: mySizes.md),
            backgroundColor: isDark ? myColors.dark : myColors.white,
            child: Stack(
              children: [
                /// -- thumbnail image
                Center(
                  child: const SizedBox(
                    height: 120,
                    width: 100,
                    child: appRoundedImage(
                      imageUrl: myImages.iphone12,
                      applyImageRadius: true,
                    ),
                  ),
                ),

                /// -- sale tag
                Positioned(
                  top: 10,
                  left: 5,
                  child: appCircularContainer(
                    radius: mySizes.sm,
                    backgroundColor: myColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: mySizes.sm, vertical: mySizes.xs),
                    child: Text(
                      "25%",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: myColors.black),
                    ),
                  ),
                ),

                ///  -- favorite icon button
                const Positioned(
                  top: 0,
                  right: 0,
                  child: appCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),

          /// details
          SizedBox(
            width: 155,
            child: Padding(
              padding: const EdgeInsets.only(
                top: mySizes.sm,
                left: mySizes.sm,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appProductTitleText(
                        title: "iPhone 12 Pro Max",
                        smallSize: true,
                      ),
                      SizedBox(
                        height: mySizes.spaceBtwItems / 2,
                      ),
                      appBrandTitleWithIcon(title: "iPhone")
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    /// pricing
                    children: [
                      const Flexible(
                        child: appProductPriceText(
                          price: "250.0",
                        ),
                      ),

                      /// Add to cart Icon
                      Container(
                        decoration: const BoxDecoration(
                          color: myColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(mySizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(mySizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: mySizes.iconLg * 1.2,
                          height: mySizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: myColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

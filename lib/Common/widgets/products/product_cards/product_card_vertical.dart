import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Common/styles/shadows.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Containers/circular_container.dart';
import 'package:tsports/Common/widgets/icons/circular_icon.dart';
import 'package:tsports/Common/widgets/images/app_rounded_images.dart';
import 'package:tsports/Common/widgets/texts/brand_title_with_icon.dart';
import 'package:tsports/Common/widgets/texts/product_price_text.dart';
import 'package:tsports/Common/widgets/texts/product_title_texts.dart';
import 'package:tsports/Features/shop/screens/product_detail/ProductDetailsScreen.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class appProductCardVertical extends StatelessWidget {
  const appProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = myHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => ProductDetailsScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [appShoadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(mySizes.productImageRadius),
          color: isDark ? myColors.darkerGrey : myColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appCircularContainer(
              height: 180,
              padding: const EdgeInsets.all(mySizes.xs),
              backgroundColor: isDark ? myColors.dark : myColors.light,
              child: Stack(
                children: [
                  /// -- product image
                  const appRoundedImage(
                    imageUrl: myImages.iphoneProdct,
                    applyImageRadius: true,
                  ),

                  /// -- sale tag
                  Positioned(
                    top: 10,
                    left: 8,
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
            const SizedBox(
              height: mySizes.spaceBtwItems / 2,
            ),

            /// -- details of the product
            const Padding(
              padding: EdgeInsets.only(left: mySizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appProductTitleText(
                    title: "iPhone 15 Pro Max",
                    smallSize: true,
                  ),
                  SizedBox(
                    height: mySizes.spaceBtwItems / 3,
                  ),

                  /// App brand Title with verified Icon

                  appBrandTitleWithIcon(
                    title: 'iPhone',
                  ),
                ],
              ),
            ),
            const Spacer(),

            /// -- price & add to cart row
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              /// price
              const Padding(
                padding: EdgeInsets.only(left: mySizes.sm),
                child: appProductPriceText(price: '35.5', isLarge: true),
              ),

              /// Add to cart Icon
              Container(
                decoration: const BoxDecoration(
                  color: myColors.dark,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(mySizes.cardRadiusMd),
                    bottomRight: Radius.circular(mySizes.productImageRadius),
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
            ])
          ],
        ),
      ),
    );
  }
}

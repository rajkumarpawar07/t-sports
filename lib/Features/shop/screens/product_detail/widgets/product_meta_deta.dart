import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Containers/circular_container.dart';
import 'package:tsports/Common/widgets/images/app_rounded_images.dart';
import 'package:tsports/Common/widgets/images/app_rounded_small_image.dart';
import 'package:tsports/Common/widgets/texts/brand_title_with_icon.dart';
import 'package:tsports/Common/widgets/texts/product_price_text.dart';
import 'package:tsports/Common/widgets/texts/product_title_texts.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/enums.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class appProductMetaData extends StatelessWidget {
  const appProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = myHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// price & sale price
        Row(
          children: [
            /// sale tag
            appCircularContainer(
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
            const SizedBox(
              width: mySizes.spaceBtwItems,
            ),

            /// price
            Text(
              "\$250",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: mySizes.spaceBtwItems / 2,
            ),

            const appProductPriceText(
              price: '220',
              isLarge: true,
            )
          ],
        ),
        const SizedBox(
          height: mySizes.spaceBtwItems / 4,
        ),

        /// Title
        const appProductTitleText(title: "Nike Sports Shoe"),
        const SizedBox(
          height: mySizes.spaceBtwItems / 4,
        ),

        /// Stack status
        Row(
          children: [
            const appProductTitleText(
              title: "Status:",
            ),
            const SizedBox(
              width: mySizes.spaceBtwItems / 2,
            ),
            Text(
              "In stock",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(
          height: mySizes.spaceBtwItems / 4,
        ),

        /// brand
        Row(
          children: [
            appRoundedSmallImage(
                fit: BoxFit.contain,
                height: 35,
                width: 35,
                overLayColor: isDark ? myColors.white : myColors.black,
                image: myImages.nikeBrandLogo),
            const SizedBox(
              width: 5,
            ),
            const appBrandTitleWithIcon(
              title: "Nike",
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}

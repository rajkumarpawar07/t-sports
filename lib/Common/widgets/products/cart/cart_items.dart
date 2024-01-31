import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Common/widgets/appbar/appbar.dart';
import 'package:tsports/Common/widgets/images/app_rounded_images.dart';
import 'package:tsports/Common/widgets/texts/brand_title_with_icon.dart';
import 'package:tsports/Common/widgets/texts/product_title_texts.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class appCartItem extends StatelessWidget {
  const appCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = myHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        /// Image
        appRoundedImage(
            fit: BoxFit.cover,
            height: 60,
            width: 60,
            padding: EdgeInsets.all(mySizes.xs),
            backgroundColor: isDark ? myColors.darkerGrey : myColors.grey,
            imageUrl: myImages.iphone12),
        SizedBox(
          width: mySizes.spaceBtwItems,
        ),

        /// Title, price and size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appBrandTitleWithIcon(title: "iPhone"),
              Flexible(
                child: appProductTitleText(
                  title: "iPhone 12 Pro Max",
                  maxLines: 1,
                ),
              ),

              /// attributes
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: "Color ",
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: "Blue ",
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: "Model ",
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: "Pro Max",
                    style: Theme.of(context).textTheme.bodyLarge),
              ]))
            ],
          ),
        ),
      ],
    );
  }
}

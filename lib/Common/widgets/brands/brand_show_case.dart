import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Containers/circular_container.dart';
import 'package:tsports/Common/widgets/brands/brand_card.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class appBrandShowCase extends StatelessWidget {
  const appBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return appCircularContainer(
      padding: EdgeInsets.all(mySizes.md),
      showBorder: true,
      borderColor: myColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: mySizes.spaceBtwItems),
      child: Column(
        children: [
          /// brand with the products count
          appBrandCard(showBorder: false),
          SizedBox(
            height: mySizes.spaceBtwItems,
          ),

          /// top 3 images of that brand
          Row(
              children: images
                  .map((image) => brandTopProductImageWidget(image, context))
                  .toList())
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
        child: appCircularContainer(
      height: 100,
      padding: const EdgeInsets.all(mySizes.xs),
      margin: const EdgeInsets.only(right: mySizes.sm),
      backgroundColor: myHelperFunctions.isDarkMode(context)
          ? myColors.darkerGrey
          : myColors.light,
      child: Image(fit: BoxFit.contain, image: AssetImage(image)),
    ));
  }
}

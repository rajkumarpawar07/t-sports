import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Common/widgets/icons/circular_icon.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class appBottomAddToCart extends StatelessWidget {
  const appBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = myHelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: mySizes.defaultSpace, vertical: mySizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: isDark ? myColors.darkerGrey : myColors.light,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(mySizes.cardRadiusLg),
              topRight: Radius.circular(mySizes.cardRadiusLg))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              appCircularIcon(
                icon: Iconsax.minus,
                height: 40,
                width: 40,
                backgroundColor: myColors.grey,
                color: myColors.white,
              ),
              SizedBox(
                width: mySizes.spaceBtwItems,
              ),
              Text(
                "2",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(
                width: mySizes.spaceBtwItems,
              ),
              appCircularIcon(
                icon: Iconsax.add,
                height: 40,
                width: 40,
                backgroundColor: myColors.black,
                color: myColors.white,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(mySizes.md),
                  backgroundColor: myColors.black,
                  side: BorderSide(color: myColors.black)),
              child: Text("Add to cart"))
        ],
      ),
    );
  }
}

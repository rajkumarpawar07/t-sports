import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Containers/circular_container.dart';
import 'package:tsports/Common/widgets/appbar/appbar.dart';
import 'package:tsports/Features/shop/screens/Cart/widgets/cart_items.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class appCouponCodeWidget extends StatelessWidget {
  const appCouponCodeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = myHelperFunctions.isDarkMode(context);
    return appCircularContainer(
      showBorder: true,
      backgroundColor: isDark ? myColors.dark : myColors.white,
      padding: EdgeInsets.only(
          top: mySizes.sm,
          bottom: mySizes.sm,
          right: mySizes.sm,
          left: mySizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                  disabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "Have a promo code? Enter here"),
            ),
          ),

          /// Button
          SizedBox(
              width: 80,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: isDark
                          ? myColors.white.withOpacity(0.5)
                          : myColors.dark.withOpacity(0.5),
                      backgroundColor: myColors.grey.withOpacity(0.2),
                      side: BorderSide(color: myColors.grey.withOpacity(0.1))),
                  onPressed: () {},
                  child: Text("Apply")))
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tsports/Common/widgets/appbar/appbar.dart';
import 'package:tsports/Common/widgets/products/cart/cart_menu_icon.dart';
import 'package:tsports/Features/shop/screens/Cart/CartScreen.dart';
import 'package:tsports/Utils/constants/text_strings.dart';

class appHomeAppBar extends StatelessWidget {
  const appHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return appAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            myTexts.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: Colors.white.withOpacity(0.7)),
          ),
          Text(
            myTexts.homeAppBarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: Colors.white),
          ),
        ],
      ),

      /// actions
      actions: [
        appCartCounterIcon(
          onPressed: () => Get.to(() => CartScreen()),
          iconColor: Colors.white,
        )
      ],
    );
  }
}

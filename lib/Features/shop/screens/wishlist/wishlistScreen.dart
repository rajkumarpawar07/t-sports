import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Common/widgets/appbar/appbar.dart';
import 'package:tsports/Common/widgets/icons/circular_icon.dart';
import 'package:tsports/Common/widgets/layouts/grid_layout.dart';
import 'package:tsports/Common/widgets/products/cart/cart_menu_icon.dart';
import 'package:tsports/Common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:tsports/Features/shop/screens/Home/HomeScreen.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class wishlistScreen extends StatelessWidget {
  const wishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          appCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(() => HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(mySizes.defaultSpace),
          child: appGridLayout(
              itemCount: 6,
              itemBuilder: (_, index) => appProductCardVertical()),
        ),
      ),
    );
  }
}

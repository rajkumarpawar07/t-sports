import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Common/widgets/products/cart/add_remove_button.dart';
import 'package:tsports/Common/widgets/products/cart/cart_items.dart';
import 'package:tsports/Common/widgets/texts/product_price_text.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class appCartItems extends StatelessWidget {
  const appCartItems({
    super.key,
    this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: mySizes.spaceBtwSections,
      ),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          /// -- cart item
          appCartItem(),

          if (showAddRemoveButton)
            SizedBox(
              height: mySizes.spaceBtwItems,
            ),

          /// add remove button row with total price
          if (showAddRemoveButton)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    /// Extra space
                    SizedBox(
                      width: 70,
                    ),

                    /// add remove button
                    appProductQuantityWithAddRemove(),
                  ],
                ),

                /// -- product total price
                appProductPriceText(price: "256"),
              ],
            )
        ],
      ),
    );
  }
}

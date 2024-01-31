import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Common/widgets/layouts/grid_layout.dart';
import 'package:tsports/Common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class appSortableProducts extends StatelessWidget {
  const appSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// dropn down
        DropdownButtonFormField(
            decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
            items: [
              "Name",
              "Higher Price",
              "Lower Price",
              "Sale",
              "Newest",
              "Popularity"
            ]
                .map((option) =>
                    DropdownMenuItem(value: option, child: Text(option)))
                .toList(),
            onChanged: (value) {}),
        SizedBox(
          height: mySizes.spaceBtwSections,
        ),
        appGridLayout(
            itemCount: 6, itemBuilder: (_, index) => appProductCardVertical())
      ],
    );
  }
}

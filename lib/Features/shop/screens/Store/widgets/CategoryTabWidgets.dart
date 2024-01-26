import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Common/widgets/brands/brand_show_case.dart';
import 'package:tsports/Common/widgets/layouts/grid_layout.dart';
import 'package:tsports/Common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:tsports/Common/widgets/texts/section_headline_text.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class appCategoryTab extends StatelessWidget {
  const appCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.all(mySizes.defaultSpace),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // --  brands
                  appBrandShowCase(
                    images: [
                      myImages.adidasProduct,
                      myImages.iphoneProdct,
                      myImages.adidasProduct
                    ],
                  ),

                  // -- products
                  appSectionHeadline(
                    title: "You might like",
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: mySizes.spaceBtwItems,
                  ),

                  /// Grid
                  appGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => appProductCardVertical())
                ],
              ),
            ),
          ),
        ]);
  }
}

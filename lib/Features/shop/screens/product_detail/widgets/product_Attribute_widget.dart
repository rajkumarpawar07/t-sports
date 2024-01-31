import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Containers/circular_container.dart';
import 'package:tsports/Common/widgets/chips/choice_chip.dart';
import 'package:tsports/Common/widgets/texts/product_price_text.dart';
import 'package:tsports/Common/widgets/texts/product_title_texts.dart';
import 'package:tsports/Common/widgets/texts/section_headline_text.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = myHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// - selected attribute pricing and attribution
        appCircularContainer(
          padding: EdgeInsets.all(mySizes.md),
          backgroundColor: isDark ? myColors.darkerGrey : myColors.grey,
          child: Column(
            children: [
              /// title , price and stock status
              Row(
                children: [
                  appSectionHeadline(
                    title: "Variation",
                    showActionButton: false,
                  ),
                  SizedBox(
                    width: mySizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          appProductTitleText(
                            title: "Price : ",
                            smallSize: true,
                          ),

                          /// Actual price
                          Text(
                            "\$25",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(
                            width: mySizes.spaceBtwItems / 2,
                          ),

                          /// Sale price
                          appProductPriceText(
                            price: "20",
                          )
                        ],
                      ),

                      /// stock
                      Row(
                        children: [
                          appProductTitleText(
                            title: "Stock : ",
                            smallSize: true,
                          ),
                          Text(
                            "In stock",
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: mySizes.xs,
              ),

              /// variation description
              appProductTitleText(
                title:
                    "This is the description of the product and can go to max lines 4",
                maxLines: 4,
                smallSize: true,
              )
            ],
          ),
        ),
        SizedBox(
          height: mySizes.spaceBtwItems,
        ),

        /// -- Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appSectionHeadline(
              title: "Colors",
              showActionButton: false,
            ),
            SizedBox(
              height: mySizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                appChoiceChip(
                  text: "Green",
                  selected: true,
                  onSelected: (value) {},
                ),
                appChoiceChip(
                    text: "Blue", selected: true, onSelected: (value) {}),
                appChoiceChip(
                    text: "Yellow", selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appSectionHeadline(
              title: "Sizes",
              showActionButton: false,
            ),
            SizedBox(
              height: mySizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                appChoiceChip(
                    text: "EU 23", selected: false, onSelected: (value) {}),
                appChoiceChip(
                    text: "EU 25", selected: false, onSelected: (value) {}),
                appChoiceChip(
                    text: "EU 27", selected: true, onSelected: (value) {}),
              ],
            )
          ],
        )
      ],
    );
  }
}

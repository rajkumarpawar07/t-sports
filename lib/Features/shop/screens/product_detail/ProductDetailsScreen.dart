import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Curved_Edges/curved_edges_widget.dart';
import 'package:tsports/Common/widgets/appbar/appbar.dart';
import 'package:tsports/Common/widgets/icons/circular_icon.dart';
import 'package:tsports/Common/widgets/images/app_rounded_images.dart';
import 'package:tsports/Common/widgets/texts/section_headline_text.dart';
import 'package:tsports/Features/shop/screens/product_detail/widgets/bottom_add_to_cart_widget.dart';
import 'package:tsports/Features/shop/screens/product_detail/widgets/product_Attribute_widget.dart';
import 'package:tsports/Features/shop/screens/product_detail/widgets/product_detail_image_slider_widget.dart';
import 'package:tsports/Features/shop/screens/product_detail/widgets/product_meta_deta.dart';
import 'package:tsports/Features/shop/screens/product_detail/widgets/rating_share_widget.dart';
import 'package:tsports/Features/shop/screens/product_reviews/ProductReviewsScreen.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = myHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: appBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - product image slider
            appProductImageSlider(),

            /// 2 - product details
            Padding(
              padding: EdgeInsets.only(
                  right: mySizes.defaultSpace,
                  left: mySizes.defaultSpace,
                  bottom: mySizes.defaultSpace),
              child: Column(
                children: [
                  /// -- rating and share button
                  appRatingAndShareWidget(),

                  /// - Price, Title, Brand
                  appProductMetaData(),
                  SizedBox(
                    height: mySizes.spaceBtwItems / 2,
                  ),

                  /// -- Attributes
                  ProductAttributes(),
                  SizedBox(
                    height: mySizes.spaceBtwSections,
                  ),

                  /// -- Checkout Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("Checkout"))),
                  SizedBox(
                    height: mySizes.spaceBtwSections,
                  ),

                  /// -- Description
                  appSectionHeadline(
                    title: "Description",
                    showActionButton: false,
                  ),
                  SizedBox(
                    height: mySizes.spaceBtwItems,
                  ),
                  ReadMoreText(
                    "Nike Air Max is a line of athletic shoes that is recognized for its distinctive feature—the visible Air cushioning unit in the sole. The Air Max technology was first introduced by Nike in 1987 with the release of the Air Max 1. The idea behind Air Max was to provide enhanced cushioning and impact absorption for athletes, particularly runners.",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "show more",
                    trimExpandedText: "less",
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// -- Reviews
                  const Divider(),
                  const SizedBox(
                    height: mySizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      appSectionHeadline(
                        showActionButton: false,
                        title: "Reviews(199)",
                        onPressed: () {},
                      ),
                      IconButton(
                          onPressed: () =>
                              Get.to(() => const ProductReviewScreen()),
                          icon: const Icon(
                            Iconsax.arrow_right_34,
                            size: 18,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: mySizes.spaceBtwItems,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

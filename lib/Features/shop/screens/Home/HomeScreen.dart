import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Containers/primary_header_constiner.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Containers/search_container.dart';
import 'package:tsports/Common/widgets/layouts/grid_layout.dart';
import 'package:tsports/Common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:tsports/Common/widgets/texts/section_headline_text.dart';
import 'package:tsports/Features/shop/screens/Home/HomeScreen.dart';
import 'package:tsports/Features/shop/screens/Home/widgets/HomeScreenAppBarWidget.dart';
import 'package:tsports/Features/shop/screens/Home/widgets/HomeScreenCategoryWidget.dart';
import 'package:tsports/Features/shop/screens/Home/widgets/HomeScreenPromoSliderWidget.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';
import 'package:tsports/Utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      /// to create a custom shape for a specific widget wrap it with Clippath widget
      const appPrimaryHeaderConatiner(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),

            /// -- Appbar --
            appHomeAppBar(),
            SizedBox(
              height: mySizes.spaceBtwSections,
            ),

            /// -- search bar --
            appSearchContainer(
              text: 'Search in store',
            ),
            SizedBox(
              height: mySizes.spaceBtwSections / 3,
            ),

            Padding(
                padding: EdgeInsets.only(left: mySizes.defaultSpace),
                child: Column(children: [
                  /// -- Heading --
                  appSectionHeadline(
                    titleColor: Colors.white,
                    title: 'Popular Categories',
                    showActionButton: false,
                  ),
                  SizedBox(
                    height: mySizes.spaceBtwItems,
                  ),

                  /// -- Categories --
                  appHomeCategoryWidget(),
                ])),

            SizedBox(
              height: mySizes.spaceBtwSections,
            ),
          ],
        ),
      ),

      /// body
      Padding(
          padding: const EdgeInsets.all(mySizes.defaultSpace),
          child: Column(
            children: [
              /// -- promo slider --
              const appPPromoSlider(
                banners: [myImages.banner1, myImages.banner2, myImages.banner3],
              ),
              const SizedBox(
                height: mySizes.spaceBtwSections,
              ),

              /// heading -- popular categories
              const appSectionHeadline(
                title: 'Popular Products',
                onPressed: null,
              ),
              const SizedBox(
                height: mySizes.spaceBtwItems,
              ),

              /// -- popular products --
              appGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const appProductCardVertical(),
              ),
            ],
          )),
    ])));
  }
}

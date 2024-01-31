import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Containers/circular_container.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Containers/search_container.dart';
import 'package:tsports/Common/widgets/appbar/appbar.dart';
import 'package:tsports/Common/widgets/appbar/custom_tabBar.dart';
import 'package:tsports/Common/widgets/brands/brand_card.dart';
import 'package:tsports/Common/widgets/brands/brand_show_case.dart';
import 'package:tsports/Common/widgets/images/app_rounded_small_image.dart';
import 'package:tsports/Common/widgets/layouts/grid_layout.dart';
import 'package:tsports/Common/widgets/products/cart/cart_menu_icon.dart';
import 'package:tsports/Common/widgets/texts/brand_title_with_icon.dart';
import 'package:tsports/Common/widgets/texts/section_headline_text.dart';
import 'package:tsports/Features/shop/screens/Store/widgets/CategoryTabWidgets.dart';
import 'package:tsports/Features/shop/screens/brands/all_brands_screen.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/enums.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: appAppBar(
            title: Text(
              "Store",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            actions: [
              appCartCounterIcon(
                onPressed: () {},
              )
            ],
          ),
          body: NestedScrollView(
              headerSliverBuilder: (_, innerBoxIsScrolled) {
                return [
                  /// Sliver App Bar
                  SliverAppBar(
                      automaticallyImplyLeading: false,
                      // sliver app bar will not move
                      pinned: true,
                      floating: true,
                      backgroundColor: myHelperFunctions.isDarkMode(context)
                          ? myColors.black
                          : myColors.white,
                      // height of this sliver app bar
                      expandedHeight: 410,
                      flexibleSpace: Padding(
                          padding: const EdgeInsets.all(mySizes.defaultSpace),
                          child: ListView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              /// --- search bar ---
                              const SizedBox(
                                height: mySizes.spaceBtwItems,
                              ),
                              const appSearchContainer(
                                showBackground: false,
                                text: "Search in store",
                                showBorder: true,
                                padding: EdgeInsets.symmetric(horizontal: 0),
                              ),
                              const SizedBox(
                                height: mySizes.spaceBtwSections,
                              ),

                              /// --- featured Brands ---
                              appSectionHeadline(
                                title: "Featured  brands",
                                onPressed: () =>
                                    Get.to(() => AllBrandsScreen()),
                              ),
                              const SizedBox(
                                height: mySizes.spaceBtwItems / 1.5,
                              ),

                              appGridLayout(
                                  itemCount: 4,
                                  mainAxisExtent: 80,
                                  itemBuilder: (_, index) {
                                    return appBrandCard(
                                      showBorder: true,
                                    );
                                  })
                            ],
                          )),

                      ///Tab bar
                      bottom: appTabBar(
                        tabs: [
                          Tab(child: Text("Sports")),
                          Tab(child: Text("Furniture")),
                          Tab(child: Text("Electronics")),
                          Tab(child: Text("Cloths")),
                          Tab(child: Text("Cosmetics")),
                        ],
                      )),
                ];
              },
              body: const TabBarView(
                children: [
                  /// --
                  appCategoryTab(),
                  appCategoryTab(),
                  appCategoryTab(),
                  appCategoryTab(),
                  appCategoryTab(),
                ],
              ))),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Common/widgets/appbar/appbar.dart';
import 'package:tsports/Common/widgets/images/app_rounded_images.dart';
import 'package:tsports/Common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:tsports/Common/widgets/texts/section_headline_text.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(
        title: Text(
          "Sports",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(mySizes.defaultSpace),
          child: Column(
            children: [
              /// banner
              const appRoundedImage(
                imageUrl: myImages.banner2,
                width: double.infinity,
                applyImageRadius: true,
              ),
              const SizedBox(
                height: mySizes.spaceBtwSections,
              ),

              /// Sub-Categories
              Column(
                children: [
                  /// heading
                  appSectionHeadline(
                    title: "Electronics",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: mySizes.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        separatorBuilder: (_, __) => SizedBox(
                              width: mySizes.spaceBtwItems,
                            ),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) =>
                            const appProductCardHorizontal()),
                  ),
                ],
              ),
              const SizedBox(
                height: mySizes.spaceBtwSections,
              ),

              /// banner 2
              const appRoundedImage(
                imageUrl: myImages.banner3,
                width: double.infinity,
                applyImageRadius: true,
              ),
              const SizedBox(
                height: mySizes.spaceBtwSections,
              ),

              /// Sub-Categories
              Column(
                children: [
                  /// heading
                  appSectionHeadline(
                    title: "Electronics",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: mySizes.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        separatorBuilder: (_, __) => SizedBox(
                              width: mySizes.spaceBtwItems,
                            ),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) =>
                            const appProductCardHorizontal()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

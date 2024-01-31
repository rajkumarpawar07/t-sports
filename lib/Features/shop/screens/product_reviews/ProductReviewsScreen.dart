import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Common/widgets/appbar/appbar.dart';
import 'package:tsports/Common/widgets/products/rating/rating_indicator.dart';
import 'package:tsports/Features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:tsports/Features/shop/screens/product_reviews/widgets/user_revies_card.dart';
import 'package:tsports/Utils/Device/device_utility.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- AppBar
      appBar: appAppBar(
        showBackArrow: true,
        title: Text(
          "Reviews & Ratings",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),

      /// -- body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(mySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Rating and reviews are verified and aare from people who use the same type of device that you use."),
              SizedBox(
                height: mySizes.spaceBtwItems,
              ),

              /// overall product ratings
              OverallProductRating(),

              appRatingBarIndicator(
                rating: 4.5,
              ),
              Text(
                "12,611",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: mySizes.spaceBtwSections,
              ),

              /// user review list
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}

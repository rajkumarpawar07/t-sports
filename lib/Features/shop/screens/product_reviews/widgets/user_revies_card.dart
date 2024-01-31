import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Containers/circular_container.dart';
import 'package:tsports/Common/widgets/products/rating/rating_indicator.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = myHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(myImages.userProfile),
                ),
                SizedBox(
                  width: mySizes.spaceBtwItems,
                ),
                Text(
                  "Jhon Doe",
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
        ),

        SizedBox(
          width: mySizes.spaceBtwItems,
        ),

        /// Review
        Row(
          children: [
            appRatingBarIndicator(
              rating: 4,
            ),
            SizedBox(
              width: mySizes.spaceBtwItems,
            ),
            Text(
              "01 Nov, 2023",
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        SizedBox(
          height: mySizes.spaceBtwItems,
        ),

        ReadMoreText(
          "I recently purchased a pair of Nike Air Max shoes, and I couldn't be happier with my decision. From the moment I slipped them on, I could feel the perfect blend of style and comfort that Nike is renowned for.",
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: " Show less",
          trimCollapsedText: " Show more",
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: myColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: myColors.primary),
        ),

        SizedBox(
          height: mySizes.spaceBtwItems,
        ),

        /// Comany review
        appCircularContainer(
          backgroundColor: isDark ? myColors.darkerGrey : myColors.grey,
          child: Padding(
            padding: EdgeInsets.all(mySizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nike's Store",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "02 Nov, 2023",
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
                SizedBox(
                  height: mySizes.spaceBtwItems,
                ),
                ReadMoreText(
                  "Thank you so much for taking the time to share your positive experience with the Nike Air Max series! We're thrilled to hear that our shoes have exceeded your expectations and provided the perfect blend of style and comfort for your active lifestyle.",
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: " Show less",
                  trimCollapsedText: " Show more",
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: myColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: myColors.primary),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: mySizes.spaceBtwItems,
        ),
      ],
    );
  }
}

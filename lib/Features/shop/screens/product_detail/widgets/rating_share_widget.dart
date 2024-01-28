import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class appRatingAndShareWidget extends StatelessWidget {
  const appRatingAndShareWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// rating
        Row(
          children: [
            Icon(
              Iconsax.star5,
              color: Colors.amber,
              size: 24,
            ),
            SizedBox(
              width: mySizes.spaceBtwItems / 2,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: '5.0', style: Theme.of(context).textTheme.bodyLarge),
              TextSpan(text: "(199)")
            ]))
          ],
        ),

        /// Share button
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              size: mySizes.iconMd,
            ))
      ],
    );
  }
}

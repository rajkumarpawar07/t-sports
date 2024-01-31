import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class appBillingAmountSection extends StatelessWidget {
  const appBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                "Subtotal",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Text(
              "\$256.0",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        SizedBox(
          height: mySizes.spaceBtwItems / 2,
        ),

        /// Shipping fees
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                "Shipping fees",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Text(
              "\$6.0",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),

        SizedBox(
          height: mySizes.spaceBtwItems / 2,
        ),

        /// Tax fees
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                "Tax fees",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Text(
              "\$6.0",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),

        SizedBox(
          height: mySizes.spaceBtwItems / 2,
        ),

        /// Order total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                "Order total",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Text(
              "\$6.0",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ],
    );
  }
}

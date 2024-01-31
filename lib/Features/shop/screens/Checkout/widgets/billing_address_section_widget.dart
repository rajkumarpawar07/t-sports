import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Common/widgets/texts/section_headline_text.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class appBillingAddressSection extends StatelessWidget {
  const appBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        appSectionHeadline(
          title: "Shipping Address",
          buttonTitle: "Change",
          onPressed: () {},
        ),
        Text(
          "Rajkumar Pawar",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: mySizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.grey,
              size: 18,
            ),
            const SizedBox(
              width: mySizes.spaceBtwItems,
            ),
            Text(
              "+91- 9146530955",
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(
          height: mySizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 18,
            ),
            const SizedBox(
              width: mySizes.spaceBtwItems,
            ),
            Expanded(
              child: Text(
                "South Arena , 48 Apartment, Main Street, Pune",
                style: Theme.of(context).textTheme.bodyMedium,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
            )
          ],
        ),
      ],
    );
  }
}

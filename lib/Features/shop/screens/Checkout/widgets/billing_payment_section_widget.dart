import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Containers/circular_container.dart';
import 'package:tsports/Common/widgets/texts/section_headline_text.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class appBillingPaymentSection extends StatelessWidget {
  const appBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = myHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        appSectionHeadline(
          title: "Payment Method",
          buttonTitle: "Change",
          onPressed: () {},
        ),
        const SizedBox(
          height: mySizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            appCircularContainer(
              width: 60,
              height: 35,
              backgroundColor: isDark ? myColors.light : myColors.white,
              padding: EdgeInsets.all(mySizes.sm),
              child: Image(
                image: AssetImage(myImages.Phonepe),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: mySizes.spaceBtwItems / 2,
            ),
            Text(
              "PhonePay",
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        ),
      ],
    );
  }
}

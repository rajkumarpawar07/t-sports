import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class mySocialButtons extends StatelessWidget {
  const mySocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: myColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              myImages.google,
              height: mySizes.iconMd,
              width: mySizes.iconMd,
            ),
          ),
        ),
        const SizedBox(
          width: mySizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: myColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              myImages.facebook,
              height: mySizes.iconMd,
              width: mySizes.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}

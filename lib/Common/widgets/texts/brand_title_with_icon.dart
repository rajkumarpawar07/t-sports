import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Common/widgets/texts/brand_title_text.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/enums.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class appBrandTitleWithIcon extends StatelessWidget {
  const appBrandTitleWithIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = myColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: appBrandTitleText(
          title: title,
          color: textColor,
          maxLines: maxLines,
          textAlign: textAlign,
          brandTextSize: brandTextSize,
        )),
        const SizedBox(
          width: mySizes.xs,
        ),
        const Icon(
          Iconsax.verify5,
          color: myColors.primary,
          size: mySizes.iconXs,
        )
      ],
    );
  }
}

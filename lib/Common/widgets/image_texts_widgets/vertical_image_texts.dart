import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class appVerticalImageText extends StatelessWidget {
  const appVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = Colors.white,
    this.backgroundColor = Colors.white,
    required this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    bool isDark = myHelperFunctions.isDarkMode(context);
    return GestureDetector(
      child: Padding(
          padding: const EdgeInsets.only(right: mySizes.sm),
          child: SingleChildScrollView(
            child: Column(children: [
              /// Circular Icon
              Container(
                  width: 56,
                  height: 56,
                  padding: const EdgeInsets.all(mySizes.sm),
                  decoration: BoxDecoration(
                    color: backgroundColor ??
                        (isDark ? myColors.black : myColors.white),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Image(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ), // Center
                  )),

              /// Text
              const SizedBox(height: mySizes.spaceBtwItems / 2),
              SizedBox(
                width: 55,
                child: Text(
                  '  $title',
                  style: Theme.of(context).textTheme.labelMedium!.apply(
                        color: textColor,
                      ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ]),
          )),
    );
  }
}

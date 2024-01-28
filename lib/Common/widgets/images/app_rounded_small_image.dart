import 'package:flutter/cupertino.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';

class appRoundedSmallImage extends StatelessWidget {
  const appRoundedSmallImage({
    super.key,
    this.height = 56,
    this.width = 56,
    this.padding = mySizes.sm,
    this.fit = BoxFit.cover,
    required this.image,
    this.overLayColor,
    this.backgroundColor,
    this.isNetworkImage = false,
    this.makeItRounded = false,
  });

  final double height;
  final double width;
  final double padding;
  final BoxFit? fit;
  final String image;
  final Color? overLayColor;
  final Color? backgroundColor;
  final bool isNetworkImage;
  final bool makeItRounded;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backgroundColor ??
              (myHelperFunctions.isDarkMode(context)
                  ? myColors.black
                  : myColors.white),
          borderRadius: BorderRadius.circular(100)),
      child: makeItRounded
          ? ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image(
                  fit: fit,
                  color: overLayColor,
                  image: isNetworkImage
                      ? NetworkImage(image)
                      : AssetImage(image) as ImageProvider),
            )
          : Image(
              fit: fit,
              color: overLayColor,
              image: isNetworkImage
                  ? NetworkImage(image)
                  : AssetImage(image) as ImageProvider),
    );
  }
}

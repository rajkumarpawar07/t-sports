import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class appUserProfileTile extends StatelessWidget {
  const appUserProfileTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      /// -- profile picture
      leading: Container(
        height: 50,
        width: 50,
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
            color: (myHelperFunctions.isDarkMode(context)
                ? myColors.black
                : myColors.white),
            borderRadius: BorderRadius.circular(100)),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image(image: AssetImage(myImages.userProfile))),
      ),

      /// -- title and subtitle
      title: Text(
        "Rajkumar Pawar",
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: myColors.white),
      ),
      subtitle: Text(
        "pawarrajkumar0707@gmail.com",
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: myColors.white),
      ),
      trailing: IconButton(
        icon: Icon(
          Iconsax.edit,
          color: myColors.white,
        ),
        onPressed: onPressed,
      ),
    );
  }
}

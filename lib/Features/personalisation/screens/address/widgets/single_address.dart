import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Containers/circular_container.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class SingleAddressWidget extends StatelessWidget {
  const SingleAddressWidget({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final isDark = myHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        appCircularContainer(
          padding: EdgeInsets.all(mySizes.md),
          width: double.infinity,
          showBorder: true,
          backgroundColor: selectedAddress
              ? myColors.primary.withOpacity(0.5)
              : Colors.transparent,
          borderColor: selectedAddress
              ? Colors.transparent
              : isDark
                  ? myColors.darkerGrey
                  : myColors.grey,
          margin: EdgeInsets.only(bottom: mySizes.spaceBtwItems),
          child: Stack(
            children: [
              Positioned(
                right: 5,
                top: 0,
                child: Icon(
                  selectedAddress ? Iconsax.tick_circle5 : null,
                  color: selectedAddress
                      ? isDark
                          ? myColors.light
                          : myColors.dark
                      : null,
                ),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Jhon Doe",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: mySizes.sm / 2,
                ),
                Text(
                  "+91-9246530955",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: mySizes.sm / 2,
                ),
                Text(
                  "8236 Timy Coves, South Line, Maine, 8362, USA",
                  softWrap: true,
                ),
              ])
            ],
          ),
        )
      ],
    );
  }
}

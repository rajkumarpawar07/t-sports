import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/text_strings.dart';

class myFormDivider extends StatelessWidget {
  const myFormDivider({
    super.key,
    required this.dark, required this.dividertext,
  });

  final String dividertext;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? myColors.darkGrey : myColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          dividertext,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? myColors.darkGrey : myColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        )
      ],
    );
  }
}

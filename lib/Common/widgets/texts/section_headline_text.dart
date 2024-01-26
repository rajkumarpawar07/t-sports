import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class appSectionHeadline extends StatelessWidget {
  const appSectionHeadline({
    super.key,
    this.titleColor,
    this.onPressed,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = "view all",
  });

  final Color? titleColor;
  final void Function()? onPressed;
  final bool showActionButton;
  final String title, buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .apply(color: titleColor),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}

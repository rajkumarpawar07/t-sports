import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Utils/Device/device_utility.dart';
import 'package:tsports/Utils/constants/colors.dart';

class appProgressIndicator extends StatelessWidget {
  const appProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
            flex: 11,
            child: SizedBox(
              width: myDeviceUtils.getScreenWidth(context) * 0.8,
              child: LinearProgressIndicator(
                value: value,
                minHeight: 11,
                backgroundColor: myColors.grey,
                borderRadius: BorderRadius.circular(7),
                valueColor: AlwaysStoppedAnimation(myColors.primary),
              ),
            )),
      ],
    );
  }
}

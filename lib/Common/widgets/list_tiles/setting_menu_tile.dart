import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Utils/constants/colors.dart';

class appSettingMenuTile extends StatelessWidget {
  const appSettingMenuTile(
      {super.key,
      required this.title,
      required this.subTitle,
      this.trailing,
      required this.icon,
      this.onTap});

  final String title, subTitle;
  final Widget? trailing;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: myColors.primary,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}

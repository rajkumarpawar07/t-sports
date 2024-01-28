import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Containers/circular_container.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';

class appChoiceChip extends StatelessWidget {
  const appChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = myHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? myColors.white : null),
        avatar: isColor
            ? appCircularContainer(
                width: 50,
                height: 50,
                backgroundColor: myHelperFunctions.getColor(text)!,
              )
            : null,

        labelPadding:
            isColor ? const EdgeInsets.all(0) : null, // Make icon in the center

        padding: isColor ? const EdgeInsets.all(0) : null,

        shape: isColor ? const CircleBorder() : null,

        backgroundColor: isColor ? myHelperFunctions.getColor(text)! : null,
      ),
    ); // ChoiceChip
  }
}

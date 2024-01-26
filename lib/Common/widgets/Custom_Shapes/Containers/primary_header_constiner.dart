import 'package:flutter/cupertino.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Curved_Edges/curved_edges_widget.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Containers/circular_container.dart';
import 'package:tsports/Utils/constants/colors.dart';

class appPrimaryHeaderConatiner extends StatelessWidget {
  const appPrimaryHeaderConatiner({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return appCurvedEdgesWidget(
      child: Container(
        color: myColors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: appCircularContainer(
                  backgroundColor: myColors.textWhite.withOpacity(0.15)),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: appCircularContainer(
                  backgroundColor: myColors.textWhite.withOpacity(0.15)),
            ),
            child,
          ],
        ),
      ),
    );
  }
}

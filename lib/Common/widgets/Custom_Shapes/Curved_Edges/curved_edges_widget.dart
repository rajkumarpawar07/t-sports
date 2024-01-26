import 'package:flutter/cupertino.dart';
import 'package:tsports/Common/widgets/Custom_Shapes/Curved_Edges/CurvedEdges.dart';

class appCurvedEdgesWidget extends StatelessWidget {
  const appCurvedEdgesWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: myCurvedEdges(), child: child);
  }
}

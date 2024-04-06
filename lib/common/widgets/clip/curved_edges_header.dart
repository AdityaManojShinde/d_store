import 'package:d_store/common/widgets/clip/custom_curved_edges.dart';
import 'package:flutter/material.dart';

class CurvedEdgesHeader extends StatelessWidget {
  const CurvedEdgesHeader({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: child,
    );
  }
}

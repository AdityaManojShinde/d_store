import 'package:flutter/material.dart';

class CustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);

    // right
    final rightCurve = Offset(0, size.height - 20);
    final leftCurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        rightCurve.dx, rightCurve.dy, leftCurve.dx, leftCurve.dy);
    //middle
    final secondrightCurve = Offset(0, size.height - 20);
    final secondleftCurve = Offset(size.width - 30, size.height - 20);

    path.quadraticBezierTo(secondrightCurve.dx, secondrightCurve.dy,
        secondleftCurve.dx, secondleftCurve.dy);
    // left
    final thirdrightCurve = Offset(size.width, size.height - 20);
    final thirdleftCurve = Offset(size.width, size.height);

    path.quadraticBezierTo(thirdrightCurve.dx, thirdrightCurve.dy,
        thirdleftCurve.dx, thirdleftCurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

import 'package:flutter/material.dart';

class BottomClipper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: CustomClipperDemo(),
        child: Container(
          color: Colors.red,
          height: 300.0,
        ),
      ),
    );
  }
}

class CustomClipperDemo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, 0.0);
    path.lineTo(0.0, size.height - 60);
    var firstPoint = Offset(size.width / 2, size.height);
    var secondPoint = Offset(size.width, size.height - 60);
    path.quadraticBezierTo(
      firstPoint.dx,
      firstPoint.dy,
      secondPoint.dx,
      secondPoint.dy,
    );
    path.lineTo(size.width, size.height - 60);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

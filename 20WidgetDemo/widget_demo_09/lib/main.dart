import 'package:flutter/material.dart';
import 'clip_path_demo.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '路径裁切和二次贝塞尔曲线的讲解',
//      home: BottomClipper(),
      home: BottomClipperLang(),
    );
  }
}

class BottomClipperLang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: CustomClipperLang(),
        child: Container(
          color: Colors.teal,
          height: 300,
        ),
      ),
    );
  }
}

class CustomClipperLang extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, 0.0);
    path.lineTo(0.0, size.height - 60);
    var firstPoint = Offset(size.width / 4, size.height);
    var secondPoint = Offset(size.width / 2, size.height - 60);
    path.quadraticBezierTo(
      firstPoint.dx,
      firstPoint.dy,
      secondPoint.dx,
      secondPoint.dy,
    );
    var thirdPoint = Offset(size.width / 4 * 3, size.height - 120);
    var forthPoint = Offset(size.width, size.height - 60);
    path.quadraticBezierTo(
      thirdPoint.dx,
      thirdPoint.dy,
      forthPoint.dx,
      forthPoint.dy,
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

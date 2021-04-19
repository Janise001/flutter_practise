import 'package:flutter/material.dart';

class Demo09 extends StatefulWidget {
  final String content;

  Demo09(this.content);

  @override
  _Demo09State createState() => _Demo09State();
}

class _Demo09State extends State<Demo09> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('贝塞尔曲线'),
      ),
      body: Column(
        children: [
          ClipPath(
            clipper: FirstPathDemo(),
            child: Container(
              height: 300,
              width: double.infinity,
              color: Colors.teal,
            ),
          ),
          ClipPath(
            clipper: SecondPathDemo(),
            child: Container(
              width: double.infinity,
              height: 300,
              color: Colors.cyan,
            ),
          ),
        ],
      ),
    );
  }
}

class FirstPathDemo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, 0.0);
    path.lineTo(0.0, size.height - 50);
    final firstPoint = Offset(size.width / 2, size.height);
    final secondPoint = Offset(size.width, size.height - 50);
    path.quadraticBezierTo(
        firstPoint.dx, firstPoint.dy, secondPoint.dx, secondPoint.dy);
    path.lineTo(size.width, size.height - 50);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class SecondPathDemo extends CustomClipper<Path> {
  final double _top = 0.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, _top);
    path.lineTo(0.0, _top + size.height - 50);
    final firstPoint = Offset(size.width/4, size.height+_top);
    final secondPoint = Offset(size.width/2, size.height+_top-50);
    final thirdPoint = Offset(size.width/4*3, size.height+_top-100);
    final forthPoint = Offset(size.width, size.height+_top-50);
    path.quadraticBezierTo(firstPoint.dx, firstPoint.dy, secondPoint.dx, secondPoint.dy);
    path.quadraticBezierTo(thirdPoint.dx, thirdPoint.dy, forthPoint.dx, forthPoint.dy);
    path.lineTo(size.width, size.height+_top-50);
    path.lineTo(size.width, _top);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}
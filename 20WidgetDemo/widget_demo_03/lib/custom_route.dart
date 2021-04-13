import 'package:flutter/material.dart';

class CustomRoute extends PageRouteBuilder {
  final Widget widget;

  CustomRoute(this.widget)
      : super(
          transitionDuration: Duration(milliseconds: 1000),
          pageBuilder: (BuildContext context, Animation<double> animation1,
              Animation<double> animation2) {
            return widget;
          },
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation1,
            Animation<double> animation2,
            Widget child,
          ) {
//            // 渐变效果
//            return FadeTransition(
//                child: child,
//                opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//                  parent: animation1,
//                  curve: Curves.easeInOut,
//                )));

//            // 缩放效果
//            return ScaleTransition(
//              scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//                parent: animation1,
//                curve: Curves.fastOutSlowIn,
//              )),
//              child: child,
//            );

//            // 旋转缩放效果
//            return RotationTransition(
//                child: ScaleTransition(
//                  child: child,
//                  scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//                      parent: animation1, curve: Curves.fastOutSlowIn)),
//                ),
//                turns: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
//                  parent: animation1,
//                  curve: Curves.fastOutSlowIn,
//                )));

            // 左右划动效果
            return SlideTransition(
                child: child,
                position: Tween(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
                    .animate(CurvedAnimation(
                  parent: animation1,
                  curve: Curves.fastOutSlowIn,
                )));
          },
        );
}

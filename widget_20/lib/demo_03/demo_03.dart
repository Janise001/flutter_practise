import 'package:flutter/material.dart';
import 'package:widget20/pages/pages.dart';

class Demo03 extends StatefulWidget {
  final String content;

  Demo03(this.content);

  @override
  _Demo03State createState() => _Demo03State();
}

class _Demo03State extends State<Demo03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.content),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('渐变效果'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context).push(FadeRoute(NormalPage('渐变效果')));
            },
          ),
          ListTile(
            title: Text('缩放效果'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context).push(ScaleRoute(NormalPage('缩放效果')));
            },
          ),
          ListTile(
            title: Text('旋转缩放效果'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context).push(RotateRoute(NormalPage('旋转缩放效果')));
            },
          ),
          ListTile(
            title: Text('滑动效果'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context).push(SlideRoute(NormalPage('滑动效果')));
            },
          ),
          ListTile(
            title: Text('滑动大小渐变效果'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context)
                  .push(SlideScaleRoute(NormalPage('滑动大小渐变效果')));
            },
          ),ListTile(
            title: Text('滑动透明渐变效果'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context)
                  .push(SlideFadeRoute(NormalPage('滑动透明渐变效果')));
            },
          ),
        ],
      ),
    );
  }
}

/**
 * 渐变效果
 */
class FadeRoute extends PageRouteBuilder {
  final Widget widget;

  FadeRoute(this.widget)
      : super(
          transitionDuration: Duration(milliseconds: 500),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation1,
            Animation<double> animation2,
          ) {
            return widget;
          },
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation1,
            Animation<double> animation2,
            Widget child,
          ) {
            return FadeTransition(
                child: child,
                opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                  parent: animation1,
                  curve: Curves.fastOutSlowIn,
                )));
          },
        );
}

/**
 * 缩放效果
 */
class ScaleRoute extends PageRouteBuilder {
  final Widget widget;

  ScaleRoute(this.widget)
      : super(
          transitionDuration: Duration(milliseconds: 500),
          pageBuilder: (BuildContext context, Animation<double> animation1,
              Animation<double> animation2) {
            return widget;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation1,
              Animation<double> animation2,
              Widget child) {
            return ScaleTransition(
                child: child,
                scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                  parent: animation1,
                  curve: Curves.fastOutSlowIn,
                )));
          },
        );
}

/**
 * 旋转缩放效果
 */
class RotateRoute extends PageRouteBuilder {
  final Widget widget;

  RotateRoute(this.widget)
      : super(
          transitionDuration: Duration(milliseconds: 500),
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
            return RotationTransition(
                child: ScaleTransition(
                  child: child,
                  scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                      parent: animation1, curve: Curves.fastOutSlowIn)),
                ),
                turns: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                  parent: animation1,
                  curve: Curves.fastOutSlowIn,
                )));
          },
        );
}

/**
 * 滑动效果
 */
class SlideRoute extends PageRouteBuilder {
  final Widget widget;

  SlideRoute(this.widget)
      : super(
          transitionDuration: Duration(milliseconds: 500),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation1,
            Animation<double> animation2,
          ) {
            return widget;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation1,
              Animation<double> animation2,
              Widget child) {
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

/**
 * 滑动大小渐变
 */
class SlideScaleRoute extends PageRouteBuilder {
  final Widget widget;

  SlideScaleRoute(this.widget)
      : super(
          transitionDuration: Duration(milliseconds: 500),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation1,
            Animation<double> animation2,
          ) {
            return widget;
          },
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation1,
            Animation<double> animation2,
            Widget child,
          ) {
            return SlideTransition(
                child: ScaleTransition(
                  child: child,
                  scale: Tween(begin: 0.5, end: 0.8).animate(CurvedAnimation(
                      parent: animation1, curve: Curves.fastOutSlowIn)),
                ),
                position:
                    Tween(begin: Offset(-1.0, 0.0), end: Offset(-0.1, 0.0))
                        .animate(CurvedAnimation(
                  parent: animation1,
                  curve: Curves.fastOutSlowIn,
                )));
          },
          opaque: false,
        );
}

class SlideFadeRoute extends PageRouteBuilder {
  final Widget widget;

  SlideFadeRoute(this.widget)
      : super(
          transitionDuration: Duration(milliseconds: 500),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation1,
            Animation<double> animation2,
          ) {
            return widget;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation1,
              Animation<double> animation2,
              Widget child) {
            return SlideTransition(
                child: FadeTransition(
                  child: child,
                  opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                    parent: animation1,
                    curve: Curves.fastOutSlowIn,
                  )),
                ),
                position: Tween(begin: Offset(0.0, 1.0), end: Offset(0.0, 0.0))
                    .animate(CurvedAnimation(
                  parent: animation1,
                  curve: Curves.fastOutSlowIn,
                )));
          },
        );
}

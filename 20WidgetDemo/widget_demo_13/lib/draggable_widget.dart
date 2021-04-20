import 'package:flutter/material.dart';

class DraggableWidgetDemo extends StatefulWidget {
  final Color color;
  final Offset position;

  DraggableWidgetDemo({this.color, this.position});

  @override
  _DraggableWidgetDemoState createState() => _DraggableWidgetDemoState();
}

class _DraggableWidgetDemoState extends State<DraggableWidgetDemo> {

  Offset _offset = Offset(0.0,0.0);
  @override
  void initState() {
    super.initState();
    _offset = widget.position;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: _offset.dx,
      top: _offset.dy,
      child: Draggable(
        rootOverlay: true,
        // 需要给接收器的内容
        data: widget.color,
        // 拖拽过程中
        feedback: Container(
          width: 80.0,
          height: 80.0,
          color: widget.color.withOpacity(0.5),
        ),
        // 松开控件的事件
        onDraggableCanceled: (Velocity velocity,Offset offset){
          setState(() {
            print(offset);
            _offset = offset;
          });
        },
        // 需要拖拽的子容器
        child: Container(
          height: 80.0,
          width: 80.0,
          color: widget.color,
        ),
      ),
    );
  }
}

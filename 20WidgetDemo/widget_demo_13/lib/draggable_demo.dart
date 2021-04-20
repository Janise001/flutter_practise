import 'package:flutter/material.dart';
import 'package:widgetdemo13/draggable_widget.dart';

class DraggableDemo extends StatefulWidget {
  @override
  _DraggableDemoState createState() => _DraggableDemoState();
}

class _DraggableDemoState extends State<DraggableDemo> {
  Color _targetColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draggable可拖拽控件'),
      ),
      body: Stack(
        children: [
          DraggableWidgetDemo(
            color: Colors.cyan,
            position: Offset(70, 50),
          ),
          DraggableWidgetDemo(
            color: Colors.red,
            position: Offset(200, 50),
          ),
          Positioned(
            left: 80.0,
            top: 200.0,
            child: DragTarget(
              builder: (context, listData1, listData2) {
                return Container(
                  color: _targetColor,
                  height: 300.0,
                  width: 300.0,
                );
              },
              onAccept: (value) {
                setState(() {
                  _targetColor = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

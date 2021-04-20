import 'package:flutter/material.dart';

class DraggableDemo extends StatefulWidget {
  final String title;

  DraggableDemo(this.title);

  @override
  _DraggableDemoState createState() => _DraggableDemoState();
}

class _DraggableDemoState extends State<DraggableDemo> {
  Color _acceptColor;
  List<Color> _colors = [];

  @override
  void initState() {
    super.initState();
    _acceptColor = Colors.white;
    _colors = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.blue,
      Colors.indigo,
      Colors.purple,
    ];
  }

  Widget generateColors(Color color) {
    return Draggable(
      data: color,
      feedback: Container(
        height: 50.0,
        width: 50.0,
        color: color.withOpacity(0.5),
      ),
      child: Container(
        height: 50.0,
        width: 50.0,
        color: color,
      ),
    );
  }

  List<Widget> generateList(List<Color> colors) {
    return List.generate(colors.length, (index) {
      return generateColors(colors[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: generateList(_colors),
          ),
          SizedBox(width: 50.0),
          DragTarget(
            onAccept: (value) {
              setState(() {
                _acceptColor = value;
              });
            },
            builder: (context, list1, list2) {
              return Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  color: _acceptColor,
                  border: Border.all(
                    color: Colors.grey[400],
                    width: 0.5,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

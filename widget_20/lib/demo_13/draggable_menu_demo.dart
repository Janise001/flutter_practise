import 'package:flutter/material.dart';

class DraggableMenuDemo extends StatefulWidget {
  final String title;

  DraggableMenuDemo(this.title);

  @override
  _DraggableMenuDemoState createState() => _DraggableMenuDemoState();
}

class _DraggableMenuDemoState extends State<DraggableMenuDemo> {
  List<String> menus = ['蒸', '炸', '烤', '烘', '焖','煸'];
  List<String> choose = [];

  @override
  void initState() {
    super.initState();
  }

  Widget _generateGridView(List<String> list) {
    return GridView.builder(
      padding: EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        crossAxisCount: 5,
      ),
      itemBuilder: (context, index) {
        return Draggable(
          data: list[index],
          child: Container(
            alignment: Alignment.center,
            height: 50.0,
            width: 50.0,
            color: Colors.blue,
            child: Text(list[index], style: TextStyle(color: Colors.white,fontSize: 18.0)),
          ),
          feedback: Container(
            alignment: Alignment.center,
            height: 50.0,
            width: 50.0,
            color: Colors.blue.withOpacity(0.5),
            child: Text(list[index], style: TextStyle(color: Colors.white,fontSize: 18.0)),
          ),
          onDragCompleted: () {
            setState(() {
              menus.removeAt(index);
            });
          },
        );
      },
      itemCount: list.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey[200],
            height: 300.0,
            width: double.infinity,
            child: _generateGridView(menus),
          ),
          SizedBox(height: 10.0),
          Container(
            color: Colors.grey[200],
            height: 400.0,
            width: double.infinity,
            child: DragTarget(
              onAccept: (value) {
                setState(() {
                  choose.add(value);
                });
              },
              builder: (context,list1,list2){
                return _generateGridView(choose);
              },

            ),
          ),
        ],
      ),
    );
  }
}

class MenuBean {
  final String title;

  MenuBean(this.title);
}

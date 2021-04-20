import 'package:flutter/material.dart';

class WidgetDemo extends StatefulWidget {
  @override
  _WidgetDemoState createState() => _WidgetDemoState();
}

class _WidgetDemoState extends State<WidgetDemo> {
  double height = 0.0;

  List<MenuBean> _currentBeans = [];

  List<MenuBean> _menus = [
    MenuBean('烘焙'),
    MenuBean('蒸'),
    MenuBean('烤'),
    MenuBean('炖'),
    MenuBean('白灼'),
    MenuBean('煎'),
    MenuBean('炸'),
    MenuBean('烙'),
    MenuBean('醋溜'),
    MenuBean('干炒'),
    MenuBean('焗'),
  ];

  @override
  void initState() {
    super.initState();
    final int rows = (_menus.length / 5) - (_menus.length / 5).truncate() == 0
        ? (_menus.length / 5).truncate()
        : (_menus.length / 5).truncate() + 1;
    height = rows * 50.0 + (rows - 1).toDouble() * 10.0 + 20;
    print('rows:$rows,height:$height');
  }

  Widget _createGridView(List<MenuBean> list) {
    return GridView.builder(
      padding: EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        crossAxisCount: 5,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Draggable(
          data: list[index],
          child: Container(
            width: 50.0,
            height: 50.0,
            color: Colors.lightBlue,
            alignment: Alignment.center,
            child: Text(
              list[index].title,
              style: TextStyle(color: Colors.white),
            ),
          ),

          feedback: Container(
            width: 50.0,
            height: 50.0,
            alignment: Alignment.center,
            child: Text('${list[index].title}',style: TextStyle(color: Colors.white,fontSize: 16.0),),
            color: Colors.lightBlueAccent.withOpacity(0.5),
          ),
          onDragCompleted: () {
            setState(() {
              list.removeAt(index);
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
        title: Text('demo'),
      ),
      body: Column(

        children: [
          Container(
            height: 200,
            child: _createGridView(_menus),
          ),
          SizedBox(height: 20,),
          Container(
            height: height,
            color: Colors.grey[200],
            child: DragTarget(
              builder: (context, list1, list2) {
                return _createGridView(_currentBeans);
              },
              onAccept: (value) {
                setState(() {
                  _currentBeans..add(value);
                });
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

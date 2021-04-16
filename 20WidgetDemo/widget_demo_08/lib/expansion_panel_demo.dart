import 'package:flutter/material.dart';

class ExpansionPanelListDemo extends StatefulWidget {
  @override
  _ExpansionPanelListDemoState createState() => _ExpansionPanelListDemoState();
}

class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {
  List<ExpansionPanelBean> list;

  _ExpansionPanelListDemoState() {
    list = List<ExpansionPanelBean>();
    for (int i = 0; i < 10; i++) {
      list..add(ExpansionPanelBean(i, false));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanelDemo'),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index, isExpanded) {
            setState(() {
              list.forEach((element) {
                if (element.index == index) {
                  element.isOpen = !isExpanded;
                }
              });
            });
          },
          children: list.map((e) {
            return ExpansionPanel(
              headerBuilder: (context, bol) {
                return ListTile(
                  title: Text('Header No is ${e.index}'),
                );
              },
              body: ListTile(
                title: Text('Body No. is ${e.index}'),
              ),
              isExpanded: e.isOpen,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class ExpansionPanelBean {
  int index;
  bool isOpen;

  ExpansionPanelBean(this.index, this.isOpen);
}

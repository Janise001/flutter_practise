import 'package:flutter/material.dart';

class Demo08 extends StatefulWidget {
  final String title;

  Demo08(this.title);

  @override
  _Demo08State createState() => _Demo08State();
}

class _Demo08State extends State<Demo08> {
  List<ExpansionBean> _list;

  @override
  void initState() {
    super.initState();
    _list = List<ExpansionBean>();
    for (int i = 0; i < 10; i++) {
      ExpansionBean bean = ExpansionBean(i, false);
      _list..add(bean);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          ExpansionTile(
            initiallyExpanded: false,
            leading: Icon(Icons.ac_unit),
            title: ListTile(
              title: Text('title'),
            ),
            children: [
              ListTile(
                title: Text('childrenTitle'),
              ),
            ],
          ),
          ExpansionPanelList(
            expansionCallback: (index,isExpanded){
              setState(() {
                _list[index].isOpen = !isExpanded;
              });
            },
            children: _list.map((e) {
              return ExpansionPanel(
                isExpanded: e.isOpen,
                headerBuilder: (context, isExpanded) {
                  return ListTile(
                    title: Text('这是第${e.index}行'),
                  );
                },
                body: ListTile(
                  title: Text('这是第${e.index}行内容'),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class ExpansionBean {
  int index;
  bool isOpen;

  ExpansionBean(this.index, this.isOpen);
}

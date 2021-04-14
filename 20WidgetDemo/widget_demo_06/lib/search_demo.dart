import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:widgetdemo06/asset.dart';

//class SearchDemo extends StatefulWidget {
//  @override
//  _SearchDemoState createState() => _SearchDemoState();
//}
//
//class _SearchDemoState extends State<SearchDemo> {
//  PublishSubject<String> _subject = PublishSubject<String>();
//
//  List<String> _result = [];
//
//  @override
//  void initState() {
//    super.initState();
//    _subject.debounce(Duration(milliseconds: 500)).listen((event) {
//      print(event);
//      _result.clear();
//      List<String> list = [];
//      // 筛选数据
//      searchList.forEach((element) {
//        if (element.contains(event)) {
//          list..add(element);
//        }
//      });
//      setState(() {
//        _result = list;
//      });
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Container(
//          padding: EdgeInsets.only(left: 18, right: 18),
//          decoration: BoxDecoration(color: Colors.white.withOpacity(0.4)),
//          width: double.infinity,
//          child: TextField(
//            decoration: InputDecoration(border: InputBorder.none),
//            onChanged: (value) {
//              _subject.add(value);
//            },
//          ),
//        ),
//      ),
//      body: ListView.builder(
//          itemCount: _result.length,
//          itemBuilder: (BuildContext context, int index) {
//            return ListTile(
//              title: Text(_result[index]),
//            );
//          }),
//    );
//  }
//}

class SearchBarDelegate extends SearchDelegate {
  // 搜索框右侧部件组合
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () => query = '',
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
//      icon: AnimatedIcon(
//        icon: AnimatedIcons.,
//        progress: transitionAnimation,
//      ),
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
//    return Container(
//      child: Card(
//        child: AspectRatio(
//          aspectRatio: 16 / 9,
//          child: Container(
//            child: Text(query),
//          ),
//        ),
//      ),
//    );
    List<String> _result = query.isEmpty
        ? recentList
        : searchList.where((element) => element.contains(query)).toList();
    return ListView.builder(
      itemCount: _result.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.only(left: 18.0, right: 18.0, bottom: 10.0),
          child: AspectRatio(
            aspectRatio: 16 / 7,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              elevation: 5.0,
              shadowColor: Colors.grey[300],
              child: Center(
                child: Text(
                  _result[index],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> _suggestions = query.isEmpty
        ? recentList
        : searchList.where((element) => element.startsWith(query)).toList();

    return ListView.builder(
      itemCount: _suggestions.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: RichText(
            text: TextSpan(
                text: _suggestions[index].substring(0, query.length),
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
                children: [
                  TextSpan(
                    text: _suggestions[index].substring(query.length),
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                    ),
                  ),
                ]),
          ),
        );
      },
    );
  }
}

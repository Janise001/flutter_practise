import 'package:flutter/material.dart';
import 'data.dart';

class Demo06 extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
//        Navigator.of(context).pop();
        close(context, null);
      },
      icon: AnimatedIcon(
        progress: transitionAnimation,
        icon: AnimatedIcons.close_menu,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Card(
      child: AspectRatio(
        aspectRatio: 16 / 7,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> list = query.isEmpty
        ? recent
        : tools.where((element) => element.startsWith(query)).toList();

    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: RichText(
              text: TextSpan(
                  text: list[index].substring(0, query.length),
                  style: TextStyle(
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                  children: [
                    TextSpan(
                      text: list[index].substring(query.length),
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0),
                    ),
                  ]),
            ),
          );
        });
  }
}

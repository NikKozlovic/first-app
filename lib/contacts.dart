import 'package:flutter/material.dart';

import 'category.dart';

class Contacts extends StatelessWidget {
  final String title;

  Contacts(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: new Text(
          "Chat",
          style: TextStyle(
            color: Colors.grey[800],
          ),
        ),
      ),
      body: new Column(
        children: <Widget>[CategorySelector()],
      ),
    );
  }
}

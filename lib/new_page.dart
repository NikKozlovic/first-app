import 'package:flutter/material.dart';

bool isSwitched = true;

class NewPage extends StatelessWidget {
  final String title;
  NewPage(this.title);
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
          "Settings",
          style: TextStyle(
            color: Colors.grey[800],
          ),
        ),
      ),
      body: new Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10.0),
            new ListTile(
              title: new Text("Dark mode"),
              trailing: Switch(
                value: false,
                onChanged: (changeTheme) {},
                activeColor: Colors.grey[800],
              ),
            ),
            new Divider(
              thickness: 1.0,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  final String title;

  Search(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        centerTitle: true,
        title: new Text(
          "Search",
          style: TextStyle(
            color: Colors.grey[800],
          ),
        ),
      ),
      body: new Padding(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Enter username'),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10.0),
                  Row(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/profile.jpeg"),
                          radius: 30.0,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        "John",
                        style: TextStyle(
                          color: Colors.grey[400],
                          letterSpacing: 1.0,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () => print("image clicked"),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/profiles.png"),
                          radius: 30.0,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        "Tom",
                        style: TextStyle(
                          color: Colors.grey[400],
                          letterSpacing: 1.0,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                    "",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

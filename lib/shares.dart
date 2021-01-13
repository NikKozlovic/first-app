import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Shares extends StatelessWidget {
  int CatHack1 = 5;
  final String title;

  Shares(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            onPressed: () => Navigator.of(context).pushNamed("/d"),
          ),
          new IconButton(
            icon: new Icon(Icons.account_box),
            onPressed: () => Navigator.of(context).pop(null),
          ),
        ],
        leading: new IconButton(
          icon: new Icon(Icons.camera_alt),
          onPressed: () {},
        ),
        title: new Text(
          "CokeGram",
          style: TextStyle(
            color: Colors.grey[800],
            fontFamily: "Lobster",
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: new Padding(
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Divider(
                height: 20.0,
                color: Colors.grey[500],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/profile.jpeg"),
                        radius: 30.0,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.deepPurpleAccent,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 28.0,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/profiles.png"),
                            radius: 26.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.deepPurpleAccent,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 28.0,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/profiles1.jpg"),
                            radius: 26.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.deepPurpleAccent,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 28.0,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/profiles2.jpg"),
                            radius: 26.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.deepPurpleAccent,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 28.0,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/profiles3.jpg"),
                            radius: 26.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.grey,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 29.0,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/space-1.jpg"),
                            radius: 26.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.grey,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 29.0,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/space-2.jpg"),
                            radius: 26.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 20.0,
                color: Colors.grey[500],
              ),
              Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Colors.deepPurpleAccent,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 18.0,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/profiles1.jpg"),
                          radius: 16.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Cat Hack",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 30.0,
                  ),
                ],
              ),
              Divider(
                height: 10.0,
                color: Colors.grey[500],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
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
                                    "assets/space-3.jpg",
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
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      IconButton(
                        iconSize: 30.0,
                        icon: Icon(
                          Icons.favorite_border,
                        ),
                        onPressed: () {
                          CatHack1 += 1;
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.chat_bubble_outline,
                    size: 30.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(
                    Icons.send,
                    size: 30.0,
                  ),
                  SizedBox(
                    width: 190.0,
                  ),
                  Icon(
                    Icons.bookmark_border,
                    size: 30.0,
                  ),
                ],
              ),
              Divider(
                height: 5.0,
                color: Colors.grey[500],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/profiles2.jpg"),
                      radius: 10.0,
                    ),
                  ),
                  Text(
                    "   Liked by",
                  ),
                  Text(
                    " Sigma",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " and",
                  ),
                  Text(
                    " $CatHack1 others",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Divider(
                height: 20.0,
                color: Colors.grey[500],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Colors.deepPurpleAccent,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 18.0,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/profiles3.jpg"),
                          radius: 16.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Bear Bot",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 30.0,
                  ),
                ],
              ),
              Divider(
                height: 10.0,
                color: Colors.grey[500],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            children: <Widget>[
                              Center(
                                child: Image.asset(
                                  "assets/test.jpg",
                                  height: 220,
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
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      IconButton(
                        iconSize: 30.0,
                        icon: Icon(
                          Icons.favorite_border,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.chat_bubble_outline,
                    size: 30.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(
                    Icons.send,
                    size: 30.0,
                  ),
                  SizedBox(
                    width: 190.0,
                  ),
                  Icon(
                    Icons.bookmark_border,
                    size: 30.0,
                  ),
                ],
              ),
              Divider(
                height: 5.0,
                color: Colors.grey[500],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/profiles2.jpg"),
                      radius: 10.0,
                    ),
                  ),
                  Text(
                    "   Liked by",
                  ),
                  Text(
                    " Sigma",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " and",
                  ),
                  Text(
                    " 10 others",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

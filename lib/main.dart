import 'package:first_app/app_theme.dart';
import 'package:first_app/contacts.dart';
import 'package:first_app/search.dart';
import 'package:first_app/shares.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'new_page.dart';

void main() => runApp(MaterialApp(
      home: Card(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.LightTheme,
      darkTheme: ThemeData.dark(),
      routes: <String, WidgetBuilder>{
        "/a": (BuildContext context) => new NewPage("Settings"),
        "/b": (BuildContext context) => new Shares("Shares"),
        "/c": (BuildContext context) => new Contacts("Contacts"),
        "/d": (BuildContext context) => new Search("Search"),
      },
    ));

class Card extends StatefulWidget {
  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<Card> {
  int myFollowers = 0;
  String myName = "John";
  String myGmail = "John@gmail.com";
  String myPhone = "010231321";
  var _selectedVal = false;
  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
      color: Colors.grey[800],
    );
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.chevron_right),
            onPressed: () => Navigator.of(context).pushNamed("/b"),
          ),
        ],
        title: Text(
          "Profile",
          style: textStyle,
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey[850],
              ),
              accountName: new Text("$myName"),
              accountEmail: new Text("$myGmail"),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: AssetImage("assets/profile.jpeg"),
              ),
            ),
            new ListTile(
              title: new Text("Settings"),
              trailing: new Icon(
                Icons.settings,
                color: Colors.grey[400],
              ),
              onTap: () => Navigator.of(context).pushNamed("/a"),
            ),
            new ListTile(
              title: new Text("Chat"),
              trailing: new Icon(
                Icons.contacts,
                color: Colors.grey[400],
              ),
              onTap: () => Navigator.of(context).pushNamed("/c"),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(
                Icons.close,
                color: Colors.grey[400],
              ),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/profile.jpeg"),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[800],
              ),
              Text(
                "NAME",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                "$myName",
                style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15.0),
              Text(
                "FOLLOWERS",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                "$myFollowers",
                style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    "$myGmail",
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
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          color: Colors.grey[400],
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          "$myPhone",
                          style: TextStyle(
                            color: Colors.grey[400],
                            letterSpacing: 1.0,
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                height: 30.0,
                color: Colors.grey[800],
              ),
              SizedBox(height: 0.0),
              new ListTile(
                title: new Text("Follow"),
                trailing: Checkbox(
                  value: _selectedVal,
                  onChanged: (val) {
                    setState(() {
                      if (val) {
                        _selectedVal = true;
                        myFollowers += 1;
                      } else {
                        myFollowers -= 1;
                        _selectedVal = false;
                      }
                    });
                  },
                  activeColor: Colors.deepPurpleAccent,
                ),
              ),
              Divider(
                height: 10.0,
                color: Colors.grey[800],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.border_all,
                    size: 40.0,
                  ),
                  Icon(
                    Icons.assignment_ind,
                    size: 40.0,
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              new Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/space-1.jpg",
                            height: 170.0,
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Image.asset(
                            "assets/space-2.jpg",
                            height: 170.0,
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Image.asset(
                            "assets/space-3.jpg",
                            height: 170.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              new SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

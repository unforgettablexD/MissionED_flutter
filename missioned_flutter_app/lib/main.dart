import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
    routes: <String, WidgetBuilder>{
      "/intro2": (BuildContext context) => new introduction2(),
      "/intro3": (BuildContext context) => new introduction3()
    },
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 10,
      backgroundColor: Colors.white,
      image: Image.asset('assets/images/output-onlinepngtools (88).png'),
      photoSize: 150,
      navigateAfterSeconds: introduction1(),
    );
    // TODO: implement build
  }
}

class introduction1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MissionED"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Introduction page 1"),
              new RaisedButton(onPressed: () {
                Navigator.of(context).pushNamed("/intro2");
              })
            ],
          ),
        ),
      ),
    );
  }
}

class introduction2 extends StatefulWidget {
  @override
  _introduction2State createState() => _introduction2State();
}

class _introduction2State extends State<introduction2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MissionED"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 140,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: ExactAssetImage('assets/images/blank_profile_pic.png'),
                fit: BoxFit.cover,
              )),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Introduction page 2"),
              new RaisedButton(onPressed: () {
                Navigator.of(context).pushNamed("/intro3");
              })
            ],
          ),
        ),
      ),
    );
  }
}

class introduction3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MissionED"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Introduction page 3"),
              new RaisedButton(onPressed: null)
            ],
          ),
        ),
      ),
    );
  }
}

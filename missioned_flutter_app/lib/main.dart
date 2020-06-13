import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
    routes: <String, WidgetBuilder>{
      "/intro2": (BuildContext context) =>new introduction2(),
      "/intro3": (BuildContext context) =>new introduction3()
    },
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() =>MyAppState();
}

class MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      backgroundColor: Colors.white,
      image: Image.asset('assets/output-onlinepngtools (88).png'),
      photoSize: 150,
      navigateAfterSeconds: introduction1(),

    );
    // TODO: implement build
  }
}

class introduction1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
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
              new RaisedButton(
                  onPressed: () {Navigator.of(context).pushNamed("/intro2");}

              )
            ],
          ),
        ),

      ),
    );
  }
}

class introduction2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("MissionED"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new Text("Introduction page 2"),
              new RaisedButton(onPressed: () {Navigator.of(context).pushNamed("/intro3");})

            ],
          ),
        ),

      ),
    );
  }
}

class introduction3 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
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


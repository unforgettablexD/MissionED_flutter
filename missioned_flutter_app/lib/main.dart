import 'package:flutter/material.dart';

import './screens/getting_started_screen.dart';



void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MissionED',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: GettingStartedScreen(),
    );

  }

}

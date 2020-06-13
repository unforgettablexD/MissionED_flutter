import 'package:flutter/material.dart';
import './screens/signup_screen.dart';
import './screens/login_screen.dart';

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
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        SignupScreen.routeName: (ctx) => SignupScreen(),
      },
    );

  }

}

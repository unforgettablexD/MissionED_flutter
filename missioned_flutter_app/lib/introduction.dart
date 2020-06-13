import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';


class Introduction extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("MissionED"),
      ),
      body: Center(
        child: Text("Page 1",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

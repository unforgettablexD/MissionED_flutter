import 'package:flutter/material.dart';
import '../widgets/slide_dots.dart';
import 'dart:async';
import '../model/slide.dart';
import '../widgets/slideitem.dart';

class GettingStartedScreen extends StatefulWidget{
  @override
  _GettingStartedScreenState createState() => _GettingStartedScreenState();
}

class _GettingStartedScreenState extends State<GettingStartedScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(
    initialPage: 0
  );

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if(_currentPage < 2 )
        {
          _currentPage++;
        }
      else{
        _currentPage =0;
      }

      _pageController.animateToPage(_currentPage, duration: Duration(microseconds: 300), curve: Curves.easeIn);
    });

  }

  _onPageChanged( int index){
    setState(() {
      _currentPage=index;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
              Expanded(

                child:Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      onPageChanged: _onPageChanged,
                      itemCount: slidelist.length,
                      itemBuilder: (context, i) =>SlideItem(i) ,
                    ),
                    Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 35),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              for(int i= 0; i<slidelist.length; i++)
                                if(i == _currentPage)
                                  SlideDots(true)
                                 else
                                SlideDots(false)
                            ],
                          ),
                        )
                      ],
                    )
                  ],

                )
              ),
              SizedBox(height: 50,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                FlatButton(child: Text('Getting Started',style: TextStyle(fontSize: 18),),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.all(15),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                onPressed: () { },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Text('Have an account?', style: TextStyle(fontSize: 18),),
                  FlatButton(child: Text('Log In', style: TextStyle(fontSize: 18),),),
                ],)
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
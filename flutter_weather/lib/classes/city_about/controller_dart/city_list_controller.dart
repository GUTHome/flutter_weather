import 'package:flutter/material.dart';

class city_list_controller extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return MainView();
  }
}

class MainView extends StatelessWidget{

  @override 
  Widget build(BuildContext context){

    return MaterialApp(
      title: 'demo',
      home: Container(
        color: Colors.white,
      ),
    );
  }
}
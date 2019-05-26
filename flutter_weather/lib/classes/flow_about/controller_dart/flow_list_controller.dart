import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class flow_list_controller extends StatefulWidget{

  //继承于有状态的widget一定要重新创建一个状态类
  @override
  _flowListControllerSate createState(){
    return _flowListControllerSate();
  }
}

class _flowListControllerSate extends State<flow_list_controller>{


    @override
    Widget build (BuildContext context){

      return new Scaffold(
        // appBar: AppBar(
        //   title: Text('信息', style: TextStyle(
        //     fontSize: 20,
        //     color: Colors.white,
        //   ),),
        //   backgroundColor: Colors.blue,
        // ),
        // body: Container(),
      );
    }
}
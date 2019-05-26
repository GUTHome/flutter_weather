import 'package:flutter/material.dart';

///cupertino风格组件
// import 'package:flutter/cupertino.dart';

// 两个控制器
import 'package:flutter_weather/classes/city_about/controller_dart/city_list_controller.dart';
import 'package:flutter_weather/classes/flow_about/controller_dart/flow_list_controller.dart';

/// 主要入口main函数
void main() {

  runApp(MyApp());
}

class MyApp extends StatefulWidget{

@override
_MyAppStatePage createState(){
      return _MyAppStatePage();
    }
}

class _MyAppStatePage extends State<MyApp> {
  int _tabIndex = 0;
  var _tabImages;
  var _body;
  var appBarTitles = ['信息', '天气'];
  final tabTextStyleNormal = new TextStyle(color: Colors.grey);
  final tabTextStyleSelect = new TextStyle(color: Colors.red);

  void initData() {
    if (_tabImages == null) {
      _tabImages = [
        [
          getTabImages('sources/tabbar_find_normal.png'),
          getTabImages('sources/tabbar_find_select.png')
        ],
        [
          getTabImages('sources/tabbar_find_normal.png'),
          getTabImages('sources/tabbar_find_select.png')
        ]
      ];
    }

    _body = new IndexedStack(
      children: <Widget>[
        // 子控制器
        new flow_list_controller(),
        new city_list_controller(),
      ],
      index: _tabIndex,
    );
  }

  Image getTabImages(path) {
    return new Image.asset(path, width: 20.0, height: 20.0);
  }

  TextStyle getCurrentTabTextStyle(int index){
    if (index == _tabIndex) {
      return tabTextStyleSelect;
    } else {
      return tabTextStyleNormal;
    }
  }

  Image getCurrentIcon(int index){
    if (index == _tabIndex) {
      return _tabImages[index][1];
    } else {
      return _tabImages[index][0];
    }
  }

  Text getCurrentText(int index){
    return Text(appBarTitles[index], style: getCurrentTabTextStyle(index));
  }

  @override
  Widget build(BuildContext context) {

    initData();

    return MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.blue,
      ),
      home: new Scaffold(
        body: _body,
        bottomNavigationBar: new BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
              icon: getCurrentIcon(0),
              title: getCurrentText(0),
            ),
            new BottomNavigationBarItem(
              icon: getCurrentIcon(1),
              title: getCurrentText(1),
            ),
          ],
          currentIndex: _tabIndex,
          onTap: (index){
            setState((){
              _tabIndex = index;
            });
          },
        ),
      ),
    );
  }
}

/// git标签规范：flutter_xxx(学习)
/// UI基础部分例如 第一个是tabBar搭建：flutter_base_tabBar
/// 网络基础部分例如 flutter_net_xxx
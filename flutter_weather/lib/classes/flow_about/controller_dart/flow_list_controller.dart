import 'package:flutter/material.dart';

class flow_list_controller extends StatefulWidget {
  //继承于有状态的widget一定要重新创建一个状态类
  @override
  _flowListControllerSate createState() {
    return _flowListControllerSate();
  }
}

class _flowListControllerSate extends State<flow_list_controller> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '信息流',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.red,
        leading: Container(
          width: 10,
          height: 10,
          color: Colors.red,
          padding: EdgeInsets.all(10),
          child: Image.asset('sources/head.jpeg'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            highlightColor: Colors.white,
            disabledColor: Colors.white,
            iconSize: 22,
            onPressed: () {
              print('点击了分享按钮');
            },
          ),
          PopupMenuButton(
            icon: Icon(
              Icons.add,
              size: 30,
            ),
            offset: Offset(0, 100), // 再大偏移最终也只是顶住
            itemBuilder: (BuildContext context) => <PopupMenuItem>[
                  PopupMenuItem(
                    height: 45,
                    /// 备注 column 竖直布局   Row 水平布局
                    child: Row(
                      // 设置row的布局方式
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.note),
                        Text(
                          '消息',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ],
                    ),
                    value: 'new',
                  ),
                  PopupMenuItem(
                    height: 45,
                    value: 'video',
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.ondemand_video),
                        Text(
                          '视频',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    height: 45,
                    value: 'music',
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.music_video),
                        Text(
                          '音乐',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ],
              onSelected: (var actionName){
              switch (actionName) {
                case 'new':
                  {
                    print('$actionName 点击了消息');
                  }
                  break;
                  case 'video':
                  {
                    print('$actionName 点击了视频');
                  }
                  break;
                  case 'music':
                  {
                    print('$actionName 点击了音乐');
                  }
                  break;
                default:
              }
            },
          ),
        ],
      ),
    );
  }
}

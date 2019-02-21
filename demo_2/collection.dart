import 'package:flutter/material.dart';

class Collection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.chevron_left, color: Colors.black,),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text("我的收藏", style: TextStyle(
          color: Colors.black,
            fontSize: 14.0
        ),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            tooltip: "搜索",
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add, color: Colors.black),
            tooltip: "菜单",
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.white,
        brightness: Brightness.dark,
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Text(
                          "图片与视频",
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 13.0
                          ),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                          border: BorderDirectional(end:BorderSide(color: Colors.grey[200], width: .5))
                        ),
                      )
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          "链接",
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 13.0
                          ),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                          border: BorderDirectional(end:BorderSide(color: Colors.grey[200], width: .5))
                        ),
                      )
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          "文件",
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 13.0
                          ),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                          border: BorderDirectional(end:BorderSide(color: Colors.grey[200], width: .5))
                        ),
                      )
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          "音乐",
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 13.0
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                padding: const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0, bottom: 10.0),
                margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Text(
                          "聊天记录",
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 13.0
                          ),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                          border: BorderDirectional(end:BorderSide(color: Colors.grey[200], width: .5))
                        ),
                      )
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          "语音",
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 13.0
                          ),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                          border: BorderDirectional(end:BorderSide(color: Colors.grey[200], width: .5))
                        ),
                      )
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          "笔记",
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 13.0
                          ),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                          border: BorderDirectional(end:BorderSide(color: Colors.grey[200], width: .5))
                        ),
                      )
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          "位置",
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 13.0
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0), bottomRight: Radius.circular(10.0))
                ),
                padding: const EdgeInsets.only(top: 10.0, right: 20.0, left: 20.0, bottom: 20.0),
                margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  leading: Image.asset(
                    "images/头像.jpg",
                    width: 50.0,
                    height: 50.0,
                  ),
                  title: Container(
                    child: Text(
                      "旋仔牛B",
                      style: TextStyle(
                        fontSize: 14.0
                      ),
                    ),
                    margin: const EdgeInsets.only(bottom: 30.0),
                  )
                ),
                Container(
                  child: Text(
                    "网维技术  1天前",
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 10.0
                    ),
                  ),
                  margin: const EdgeInsets.only(left: 10.0),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  leading: Image.asset(
                    "images/头像.jpg",
                    width: 50.0,
                    height: 50.0,
                  ),
                  title: Container(
                    child: Text(
                      "旋仔牛B",
                      style: TextStyle(
                        fontSize: 14.0
                      ),
                    ),
                    margin: const EdgeInsets.only(bottom: 30.0),
                  )
                ),
                Container(
                  child: Text(
                    "网维技术  1天前",
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 10.0
                    ),
                  ),
                  margin: const EdgeInsets.only(left: 10.0),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
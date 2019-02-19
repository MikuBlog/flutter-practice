import 'package:flutter/material.dart';

class MySelfDetail extends StatelessWidget {
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
        title: Text("个人信息", style: TextStyle(
          color: Colors.black
        ),),
        backgroundColor: Colors.white,
        brightness: Brightness.dark,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: ListTile(
              title: Text("头像"),
              trailing: Container(
                width: 200.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Image.asset(
                      "images/头像.jpg",
                      width: 40.0,
                      height: 40.0,
                    ),
                    Icon(Icons.chevron_right)
                  ],
                ),
              ),
              onTap: () {},
            ),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              title: Text("昵称"),
              trailing: Container(
                width: 100.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "旋仔",
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                    Icon(Icons.chevron_right)
                  ],
                ),
              ),
              onTap: () {},
            ),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              title: Text("微信号"),
              trailing: Text(
                "wenzixuan0429",
                style: TextStyle(
                  color: Colors.grey
                ),
              ),
              onTap: () {},
            ),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              title: Text("二维码名片"),
              trailing: Container(
                width: 200.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Icon(IconData(0xe602, fontFamily: 'iconfont')),
                    Icon(Icons.chevron_right)
                  ],
                ),
              ),
              onTap: () {},
            ),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              title: Text("更多"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            color: Colors.white,
            child: ListTile(
              title: Text("我的地址"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.pushNamed(context, '/postion');
              },
            ),
          )
        ],
      ),
    );
  }
}
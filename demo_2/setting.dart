import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
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
        title: Text("设置", style: TextStyle(
          color: Colors.black
        ),),
        backgroundColor: Colors.white,
        brightness: Brightness.dark,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: ListTile(
              title: Text("账号与安全"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: BorderDirectional(bottom: BorderSide(color: Colors.grey[200], width: .5))
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: BorderDirectional(bottom: BorderSide(color: Colors.grey[200], width: .5))
            ),
            margin: const EdgeInsets.only(top: 10.0),
            child: ListTile(
              title: Text("新消息提示"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: BorderDirectional(bottom: BorderSide(color: Colors.grey[200], width: .5))
            ),
            child: ListTile(
              title: Text("忽扰模式"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: BorderDirectional(bottom: BorderSide(color: Colors.grey[200], width: .5))
            ),
            child: ListTile(
              title: Text("聊天"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: BorderDirectional(bottom: BorderSide(color: Colors.grey[200], width: .5))
            ),
            child: ListTile(
              title: Text("隐私"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: BorderDirectional(bottom: BorderSide(color: Colors.grey[200], width: .5))
            ),
            child: ListTile(
              title: Text("通用"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: BorderDirectional(bottom: BorderSide(color: Colors.grey[200], width: .5))
            ),
            child: ListTile(
              title: Text("关于微信"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: BorderDirectional(bottom: BorderSide(color: Colors.grey[200], width: .5))
            ),
            child: ListTile(
              title: Text("帮助与反馈"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: BorderDirectional(bottom: BorderSide(color: Colors.grey[200], width: .5))
            ),
            child: ListTile(
              title: Text("插件"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: BorderDirectional(bottom: BorderSide(color: Colors.grey[200], width: .5))
            ),
            child: ListTile(
              title: Text("账号与安全"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: BorderDirectional(bottom: BorderSide(color: Colors.grey[200], width: .5))
            ),
            child: ListTile(
              title: Text("切换账号"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: BorderDirectional(bottom: BorderSide(color: Colors.grey[200], width: .5))
            ),
            child: ListTile(
              title: Text("退出"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//Dart入口函数
void main() => runApp(MyApp());

// flutter入口类
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "介绍旋仔",
      home: HomePage()
    );
  }
}

// 首页(仅只有首页)
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("自我介绍")
      ),
      body: Column(
        children: <Widget>[
          BigPage(),
          Introduce()
        ],
      ),
      floatingActionButton: Button(),
    );
  }
}

// 头像
class BigPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200.0,
        height: 200.0,
        margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: CircleAvatar(
          backgroundImage: AssetImage("images/头像.jpg"),
        ),
      )
    );
  }
}

// 自我介绍文字排版
class Introduce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Text(
              "我的名字叫旋仔，今年20岁了，是一名本科大二学生。"
            ),
          ),
          Container(
            child: Text(
              "新的一年，请大家多多关照~"
            ),
          )
        ],
      )
    );
  }
}

// 按钮
class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: "联系旋仔",
      child: Icon(Icons.phone),
      onPressed: () {
        callMe("12345678910");
      },
    );
  }

  // 呼叫我
  callMe(telephone) async {
    try {
      await launch("tel:$telephone");
    }catch(e) {
      print(e);
    }
  }
}

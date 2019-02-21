import 'package:flutter/material.dart';

class Postion extends StatelessWidget {
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
        title:  Text("我的地址", style: TextStyle(
          color: Colors.black,
            fontSize: 14.0
        ),),
        backgroundColor: Colors.white,
        brightness: Brightness.dark,
          elevation: 0.0,
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.add,
              color: Colors.black,
            ),
          )
        ]
      ),
      body: ListTile(
        title: Text("温子旋，18024900423"),
        subtitle: Text("广东省 佛山市 顺德区 xxxxxxx"),
      ),
    );
  }
}
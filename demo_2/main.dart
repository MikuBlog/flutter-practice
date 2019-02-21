import 'package:flutter/material.dart';
import 'package:myapp/chat.dart';
import 'package:myapp/find_out.dart';
import 'package:myapp/person_list.dart';
import 'package:myapp/myself.dart';
import 'package:myapp/home.dart';
import 'package:myapp/myself_detail.dart';
import 'package:myapp/postion.dart';
import 'package:myapp/setting.dart';
import 'package:myapp/card.dart';
import 'package:myapp/collection.dart';
import 'package:myapp/expression.dart';
import 'package:myapp/friend.dart'; 
import 'package:myapp/small_program.dart';
import 'package:myapp/test.dart';
import 'package:myapp/album.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "旋仔",
      home: HomePage(),
      routes: {
        '/chat': (BuildContext context) => Chat(),
        '/myself_detail': (BuildContext context) => MySelfDetail(),
        '/postion': (BuildContext context) => Postion(),
        '/setting': (BuildContext context) => Setting(),
        '/card': (BuildContext context) => CardPage(),
        '/collection': (BuildContext context) => Collection(),
        '/expression': (BuildContext context) => Expression(),
        '/friend': (BuildContext context) => Friend(),
        '/small_program': (BuildContext context) => SmallProgram(),
        '/test': (BuildContext context) => Test(),
        '/album': (BuildContext context) => Album()
      },
//      initialRoute: '/album',
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final _WidgetOption = [Home(), PersonList(), FindOut(), MySelf()];
  final textTitle = [Text("微信(103)", style: TextStyle(
            color: Colors.black,
            fontSize: 14.0
          ),), Text("通讯录", style: TextStyle(
            color: Colors.black,
            fontSize: 14.0
          ),), Text("发现", style: TextStyle(
            color: Colors.black,
            fontSize: 14.0
          ),), Text("我", style: TextStyle(
            color: Colors.black,
            fontSize: 14.0
          ),)];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: textTitle.elementAt(_selectedIndex),
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
      body: _WidgetOption.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.lightGreen,
        items: <BottomNavigationBarItem>[
          // ignore: argument_type_not_assignable
          BottomNavigationBarItem(
              icon: Icon(IconData(0xe611, fontFamily: 'iconfont'), color: Colors.black38),
              title: _selectedIndex!=0?Text("微信", style: TextStyle(color: Colors.black38),) : Text("微信", style: TextStyle(color: Colors.lightGreen),),
              activeIcon: Icon(IconData(0xe611, fontFamily: 'iconfont'), color: Colors.lightGreen),
          ),
          BottomNavigationBarItem(
              icon: Icon(IconData(0xe617, fontFamily: 'iconfont'), color: Colors.black38),
              title: _selectedIndex!=1?Text("通讯录", style: TextStyle(color: Colors.black38),) : Text("通讯录", style: TextStyle(color: Colors.lightGreen),),
              activeIcon: Icon(IconData(0xe617, fontFamily: 'iconfont'), color: Colors.lightGreen),
          ),
          BottomNavigationBarItem(
              icon: Icon(IconData(0xe60a, fontFamily: 'iconfont'), color: Colors.black38),
              title: _selectedIndex!=2?Text("发现", style: TextStyle(color: Colors.black38),) : Text("发现", style: TextStyle(color: Colors.lightGreen),),
              activeIcon: Icon(IconData(0xe60a, fontFamily: 'iconfont'), color: Colors.lightGreen),
          ),
          BottomNavigationBarItem(
              icon: Icon(IconData(0xe612, fontFamily: 'iconfont'), color: Colors.black38),
              title: _selectedIndex!=3?Text("我", style: TextStyle(color: Colors.black38),) : Text("我", style: TextStyle(color: Colors.lightGreen),),
              activeIcon: Icon(IconData(0xe612, fontFamily: 'iconfont'), color: Colors.lightGreen),
          )
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      )
    );
  }
}

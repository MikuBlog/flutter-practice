import 'package:flutter/material.dart';
import 'package:myapp/chat.dart';
import 'package:myapp/find_out.dart';
import 'package:myapp/person_list.dart';
import 'package:myapp/myself.dart';
import 'package:myapp/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "旋仔真帅",
      home: HomePage(),
      routes: {
        '/chat': (BuildContext context) => Chat(),
      },
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
  final textTitle = [Text("微信", style: TextStyle(
            color: Colors.black
          ),), Text("通讯录", style: TextStyle(
            color: Colors.black
          ),), Text("发现", style: TextStyle(
            color: Colors.black
          ),), Text("我", style: TextStyle(
            color: Colors.black
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
            icon: Icon(Icons.add_circle_outline, color: Colors.black),
            tooltip: "菜单",
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.white,
        brightness: Brightness.dark,
      ),
      body: _WidgetOption.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.chat, color: Colors.black38,), title: Text("微信", style: TextStyle(color: Colors.black38),)),
          BottomNavigationBarItem(icon: Icon(Icons.mail, color: Colors.black38,), title: Text("通讯录", style: TextStyle(color: Colors.black38),)),
          BottomNavigationBarItem(icon: Icon(Icons.find_in_page, color: Colors.black38,), title: Text("发现", style: TextStyle(color: Colors.black38),)),
          BottomNavigationBarItem(icon: Icon(Icons.people, color: Colors.black38,), title: Text("我", style: TextStyle(color: Colors.black38),))
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

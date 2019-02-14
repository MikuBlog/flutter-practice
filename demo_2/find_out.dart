import 'package:flutter/material.dart';
class FindOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          color: Colors.white,
          margin: const EdgeInsets.only(bottom: 10.0),
          child: ListTile(
            leading: Icon(Icons.streetview, color: Colors.redAccent,),
            title: Text("朋友圈"),
            trailing: Container(
              width: 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(right: 10.0),
                    child: Image.asset(
                      "images/头像.jpg",
                      width: 40.0,
                      height: 40.0,
                    ),
                  ),
                  Icon(Icons.chevron_right)
                ],
              )
            ),
            onTap: () {},
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading: Icon(Icons.phone_android, color: Colors.blueAccent,),
            title: Text("扫一扫"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ),
        Container(
          color: Colors.white,
          margin: const EdgeInsets.only(bottom: 10.0),
          child: ListTile(
            leading: Icon(Icons.phonelink_ring, color: Colors.blueAccent,),
            title: Text("摇一摇"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading: Icon(Icons.pages, color: Colors.orangeAccent,),
            title: Text("看一看"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ),
        Container(
          color: Colors.white,
          margin: const EdgeInsets.only(bottom: 10.0),
          child: ListTile(
            leading: Icon(Icons.search, color: Colors.redAccent,),
            title: Text("搜一搜"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading: Icon(Icons.shopping_cart, color: Colors.orangeAccent,),
            title: Text("购物"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ),
        Container(
          color: Colors.white,
          margin: const EdgeInsets.only(bottom: 10.0),
          child: ListTile(
            leading: Icon(Icons.games, color: Colors.purpleAccent,),
            title: Text("游戏"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading: Icon(Icons.computer, color: Colors.pinkAccent,),
            title: Text("小程序"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
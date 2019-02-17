import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
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
        title: Text("卡包", style: TextStyle(
          color: Colors.black
        ),),
        backgroundColor: Colors.white,
        brightness: Brightness.dark,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: ListTile(
              leading: Icon(
                Icons.credit_card,
                color: Colors.lightBlue,
              ),
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
              leading: Icon(
                Icons.person,
                color: Colors.orangeAccent,
              ),
              title: Text("我的票券"),
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
              leading: Icon(
                Icons.people,
                color: Colors.lightGreenAccent,
              ),
              title: Text("朋友的优惠券"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}
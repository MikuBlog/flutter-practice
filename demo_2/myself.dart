import 'package:flutter/material.dart';
class MySelf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          color: Colors.white,
          child: ListTile(
            leading: Image.asset(
              "images/头像.jpg",
              width: 100.0,
              height: 100.0
            ),
            title: Text(
              "旋仔",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            subtitle: Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: Text("微信号：wenzixuan0429"),
            ),
            trailing: Container(
              margin: const EdgeInsets.only(top: 50.0),
              child: Icon(Icons.chevron_right),
            ),
            contentPadding: const EdgeInsets.all(20.0),
            onTap: () {
              Navigator.pushNamed(context, "/myself_detail");
            }
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          color: Colors.white,
          child: ListTile(
            leading: Icon(Icons.payment, color: Colors.lightGreen,),
            title: Text("支付"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading: Icon(Icons.collections, color: Colors.redAccent,),
            title: Text("收藏"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading: Icon(Icons.picture_in_picture, color: Colors.lightBlue,),
            title: Text("相册"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading: Icon(Icons.credit_card, color: Colors.yellowAccent,),
            title: Text("卡包"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading: Icon(Icons.sentiment_satisfied, color: Colors.orangeAccent,),
            title: Text("表情"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          color: Colors.white,
          child: ListTile(
            leading: Icon(Icons.settings, color: Colors.lightBlueAccent,),
            title: Text("设置"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
        )
      ],
    );
  }
}
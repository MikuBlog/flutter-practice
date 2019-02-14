import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Container(
            margin: const EdgeInsets.only(left: 5.0),
            child: Icon(Icons.computer),
          ),
          title: Text(
            "Windows 微信已登录，手机通知已关闭",
            style: TextStyle(
              fontSize: 13.0,
              color: Colors.grey
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return ListTile(
                leading:
                    Image.asset("images/头像.jpg", width: 50.0, height: 50.0),
                title: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("旋仔"),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: Text(
                        "2月14日",
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 12.0, color: Colors.grey),
                      ),
                    )
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "旋仔今天真快乐~",
                      textAlign: TextAlign.left,
                    ),
                    Divider()
                  ],
                ),
                contentPadding:
                    const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 10.0),
                onTap: () {
                  Navigator.pushNamed(context, "/chat");
                },
              );
            },
          ),
        )
      ],
    );
  }
}

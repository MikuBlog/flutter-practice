import 'package:flutter/material.dart';

class Friend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              height: 280.0,
              child: Stack(
              children: <Widget>[
                Positioned(
                  child: Container(
                    child: Image.network(
                      "http://myinterface.xuanzai.top/getPicture",
                      fit: BoxFit.cover,
                    ),
                    height: 230.0,
                    width: 500.0,
                  ),
                ),
                Positioned(
                  child: ListTile(
                    leading: GestureDetector(
                      child: Icon(Icons.chevron_left, color: Colors.white,),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    trailing: Icon(Icons.camera_alt, color: Colors.white,),
                  ),
                ),
                Positioned(
                  right: 10.0,
                  top: 170.0,
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            "旋仔",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0
                            ),
                          ),
                          margin: const EdgeInsets.only(bottom: 30.0, right: 10.0),
                        ),
                        Container(
                          width: 80.0,
                          height: 80.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Image.asset(
                              "images/头像.jpg"
                            )
                          ),
                        )
                      ],
                    ),
                  )
                )
              ],
            ),
            color: Colors.white,
            ),
            Container(
              color: Colors.white,
              child: Container(
                margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: ListTile(
                  title: Text(
                    "朋友的新动态",
                    style: TextStyle(
                      fontSize: 12.0
                    ),
                  ),
                  trailing: Container(
                    width: 200.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        ClipOval(
                          child: Image.asset(
                            "images/头像.jpg",
                            width: 25.0,
                            height: 25.0
                          ),
                        ),
                        Container(
                          child: Icon(Icons.chevron_right),
                          margin: const EdgeInsets.only(left: 10.0),
                        )
                      ],
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    border: BorderDirectional(bottom: BorderSide(color: Colors.grey[200], width: .5), top: BorderSide(color: Colors.grey[200], width: .5),)
                ),
              )
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: Container(
                  margin: const EdgeInsets.only(bottom: 210.0),
                  child: Image.asset(
                    "images/头像.jpg",
                    width: 40.0,
                    height: 40.0,
                  ),
                ),
                title: Text(
                  "旋仔",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 14.0
                  ),
                ),
                subtitle: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "下雨",
                        style: TextStyle(
                          fontSize: 12.0
                        ),
                      ),
                      Text(
                        "学车",
                        style: TextStyle(
                          fontSize: 12.0
                        ),
                      ),
                      Text(
                        "回家",
                        style: TextStyle(
                          fontSize: 12.0
                        ),
                      ),
                      Container(
                        width: 200.0,
                        height: 100.0,
                        child: Image.network(
                          "http://myinterface.xuanzai.top/getPicture",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5.0),
                        child: Text(
                          "佛山",
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.grey
                          ),
                        )
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 8,
                              child: Text(
                                "31分钟前",
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.grey
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: const EdgeInsets.only(top: 7.0, bottom: 7.0),
                                padding: const EdgeInsets.only(right: 5.0, left: 5.0),
                                child: Icon(Icons.more_horiz, color: Colors.blueAccent,),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(3.0)
                                ),
                              ),
                            )
                          ],
                        )
                      ),
                      Container(
                        color: Colors.grey[200],
                        height: 28.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Icon(Icons.star, color: Colors.blueAccent, size: 12.0),
                              margin: const EdgeInsets.only(left: 5.0, right: 7.0),
                            ),
                            Text(
                              "旋仔",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 12.0
                              ),
                            ),
                          ],
                        )
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        )
      );
  }
}
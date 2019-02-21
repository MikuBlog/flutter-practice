import 'package:flutter/material.dart';

class Album extends StatelessWidget {
  final myWidgets = [
    FirstPage(),
    SecondPage()
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            child: Icon(Icons.chevron_left, color: Colors.black,),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          title: Text("相册", style: TextStyle(
              color: Colors.black,
              fontSize: 14.0
          ),),
          backgroundColor: Colors.white,
          brightness: Brightness.dark,
          elevation: 0.0,
          bottom: TabBar(
            tabs: <Widget>[
              Container(
                child: Text("朋友圈相册", textAlign: TextAlign.center,),
                width: 150.0,
              ),
              Container(
                child: Text("视频动态", textAlign: TextAlign.center,),
                width: 150.0,
              )
            ],
            labelColor: Colors.lightGreen,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.lightGreen,
          ),
        ),
        body: TabBarView(children: myWidgets)
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          color: Colors.white,
          child: ListTile(
              trailing: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "我的朋友圈",
                    style: TextStyle(
                        color: Color.fromRGBO(5, 138, 228, 1),
                        fontSize: 11.0
                    ),
                  ),
                  Icon(Icons.chevron_right, color: Colors.grey[400],)
                ],
              )
          ),
        ),
        Container(
          color: Colors.white,
          child: ListTile(
            leading: Container(
              margin: const EdgeInsets.only(bottom: 140.0),
              child: Text("二月"),
            ),
            title: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.only(bottom: 5.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Image.asset(
                            "images/头像.jpg",
                            width: 50.0,
                            height: 50.0,
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                            "images/头像.jpg",
                            width: 50.0,
                            height: 50.0,
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                            "images/头像.jpg",
                            width: 50.0,
                            height: 50.0,
                          ),
                        )
                      ],
                    )
                ),
                Container(
                    margin: const EdgeInsets.only(bottom: 5.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Image.asset(
                            "images/头像.jpg",
                            width: 50.0,
                            height: 50.0,
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                            "images/头像.jpg",
                            width: 50.0,
                            height: 50.0,
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                            "images/头像.jpg",
                            width: 50.0,
                            height: 50.0,
                          ),
                        )
                      ],
                    )
                ),
                Container(
                    margin: const EdgeInsets.only(bottom: 5.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Image.asset(
                            "images/头像.jpg",
                            width: 50.0,
                            height: 50.0,
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                            "images/头像.jpg",
                            width: 50.0,
                            height: 50.0,
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                            "images/头像.jpg",
                            width: 50.0,
                            height: 50.0,
                          ),
                        )
                      ],
                    )
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "暂无视频动态",
          style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14.0
          ),
        ),
      )
    );
  }
}
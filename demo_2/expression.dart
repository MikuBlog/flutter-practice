import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'dart:math' show Random;

class Expression extends StatefulWidget {
  @override
  _ExpressionState createState() => _ExpressionState();
}

class _ExpressionState extends State<Expression> {
  final List<Widget> myTabs = <Widget>[
    Container(
      width: 150.0,
      child: Tab(text: "精选表情",),
    ),
    Container(
      width: 150.0,
      child: Tab(text: "更多表情",),
    )
  ];
  final widgetLists = [
    FirstPage(),
    SecondPage()
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            child: Icon(Icons.chevron_left, color: Colors.black,),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          bottom: TabBar(
            tabs: myTabs,
            labelColor: Colors.lightGreen,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.lightGreen,
          ),
          title: Text("表情商店", style: TextStyle(
            color: Colors.black,
              fontSize: 14.0
          ),),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.black),
              tooltip: "搜索",
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.settings, color: Colors.black),
              tooltip: "菜单",
              onPressed: () {},
            )
          ],
          backgroundColor: Colors.white,
          brightness: Brightness.dark,
          elevation: 0.0,
        ),
        body: TabBarView(
          children: widgetLists,
        )
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            Container(
              height: 200.0,
              child: Swiper(
                  itemCount: 3,
                  // pagination: SwiperPagination(),
                  // control: SwiperControl(),
                  // autoplay: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(
                      "http://myinterface.xuanzai.top/getPicture",
                      fit: BoxFit.cover
                    );
                  }
                )
            ),
            Container(
              child: ListTile(
                title: Text("推荐表情")
              ),
              decoration: BoxDecoration(
                border: BorderDirectional(bottom: BorderSide(color: Colors.grey[200], width: .5)),
                color: Colors.white
              ),
            ),
            Container(
              child: ListTile(
                leading: Image.asset(
                  "images/头像.jpg",
                  width: 50.0,
                  height: 50.0
                ),
                title: Text("萌萌初音"),
                subtitle: Text("萌萌初音第一弹"),
                trailing: Container(
                  child: Text(
                    "添加",
                    style: TextStyle(
                      color: Colors.white
                    )
                  ),
                  padding: const EdgeInsets.only(left: 15.0, top: 5.0, bottom: 5.0, right: 15.0),
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(5.0)
                  )
                )
              ),
              decoration: BoxDecoration(
                border: BorderDirectional(bottom: BorderSide(color: Colors.grey[200], width: .5)),
                color: Colors.white
              ),
            )
          ]
        );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            Container(
              height: 200.0,
              child: Swiper(
                  itemCount: 3,
                  // pagination: SwiperPagination(),
                  // control: SwiperControl(),
                  // autoplay: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(
                      "http://myinterface.xuanzai.top/getPicture",
                      fit: BoxFit.cover
                    );
                  }
                )
            ),
            Container(
              child: ListTile(
                title: Text("热门排行"),
                trailing: Container(
                  width: 200.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "新品推荐",
                        style:TextStyle(
                          color: Colors.grey[400]
                        )
                      ),
                      Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              ),
              decoration: BoxDecoration(
                border: BorderDirectional(bottom: BorderSide(color: Colors.grey[200], width: .5)),
                color: Colors.white
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.white
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: 80.0,
                                height: 80.0,
                                child: CircleAvatar(
                                  radius: 5.0,
                                  child: Image.asset(
                                    "images/头像.jpg",
                                    width: 80.0,
                                    height: 80.0,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5.0)
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "萌萌Miku",
                                  style: TextStyle(
                                    fontSize: 10.0
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: 80.0,
                                height: 80.0,
                                child: CircleAvatar(
                                  radius: 5.0,
                                  child: Image.asset(
                                    "images/头像.jpg",
                                    width: 80.0,
                                    height: 80.0,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5.0)
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "萌萌Miku",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: 80.0,
                                height: 80.0,
                                child: CircleAvatar(
                                  radius: 5.0,
                                  child: Image.asset(
                                    "images/头像.jpg",
                                    width: 80.0,
                                    height: 80.0,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5.0)
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "萌萌Miku",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ))
                  ],
              ),
            )
          ]
        );
  }
}
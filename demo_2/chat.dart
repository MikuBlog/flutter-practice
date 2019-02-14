import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "【网维】17小家庭(8)",
          style: TextStyle(
            color: Colors.black
          ),
        ),
        actions: <Widget>[
          Container(
            child: Icon(Icons.more_horiz, color: Colors.black),
            margin: const EdgeInsets.only(right: 10.0),
          )
        ],
        backgroundColor: Colors.white,
        brightness: Brightness.dark,
        leading: GestureDetector(
          child: Icon(Icons.arrow_back, color: Colors.black),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Icon(Icons.rss_feed),
                ),
                Expanded(
                  flex: 5,
                  child: TextFormField(),
                ),
                Expanded(
                  flex: 1,
                  child: Icon(Icons.sentiment_satisfied),
                ),
                Expanded(
                  flex: 1,
                  child: Icon(Icons.add_circle_outline),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
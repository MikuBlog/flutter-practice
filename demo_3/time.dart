import 'package:flutter/material.dart';

class DateTime extends StatefulWidget {
  @override
  _DateTimeState createState() => _DateTimeState();
}

class _DateTimeState extends State<DateTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("时钟"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.timer),
        onPressed: () {
          // 调用函数打开
          showTimePicker(
            context: context,
            initialTime: new TimeOfDay.now(),
          ).then((val) {
            print(val);
          }).catchError((err) {
            print(err);
          });
        },
      ),
    );
  }
}

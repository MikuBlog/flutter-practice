import 'package:flutter/material.dart';
class PersonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          color: Colors.white,
          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          child: ListTile(
            leading: Container(
              width: 45.0,
              height: 45.0,
              child: Icon(Icons.person_add, color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.orangeAccent
              ),
            ),
            title: Text("新的朋友"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          child: ListTile(
            leading: Container(
              width: 45.0,
              height: 45.0,
              child: Icon(Icons.people, color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.greenAccent
              ),
            ),
            title: Text("群聊"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          child: ListTile(
            leading: Container(
              width: 45.0,
              height: 45.0,
              child: Icon(Icons.local_offer, color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.blueAccent
              ),
            ),
            title: Text("标签"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          child: ListTile(
            leading: Container(
              width: 45.0,
              height: 45.0,
              child: Icon(Icons.person_pin, color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.blueAccent
              ),
            ),
            title: Text("公众号"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
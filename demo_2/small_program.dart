import 'package:flutter/material.dart';

class SmallProgram extends StatelessWidget {
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
        title: Text("小程序", style: TextStyle(
          color: Colors.black,
            fontSize: 14.0
        ),),
        backgroundColor: Colors.white,
        brightness: Brightness.dark,
        elevation: 0.0,
      ),
       body: ListView(
         children: <Widget> [
           Container(
               decoration: BoxDecoration(
                   color: Colors.white,
                   border: BorderDirectional(bottom: BorderSide(color: Colors.grey[200], width: .5))
               ),
             child: ListTile(
               title: Text(
                 "附近的小程序",
                 style: TextStyle(
                   fontSize: 12.0
                 )
               ),
               trailing: Container(
                 width: 200.0,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: <Widget> [
                     Container(
                       width: 200.0,
                       height: 50.0,
                       child: Stack(
                         children: <Widget>[
                           Positioned(
                             right: 0.0,
                             top: 10.0,
                             child: ClipOval(
                               child: Image.asset(
                                 "images/头像.jpg",
                                 width: 25.0,
                                 height: 25.0,
                               ),
                             ),
                           ),
                           Positioned(
                             right: 20.0,
                             top: 10.0,
                             child: ClipOval(
                               child: Image.asset(
                                 "images/头像.jpg",
                                 width: 25.0,
                                 height: 25.0,
                               ),
                             ),
                           ),
                           Positioned(
                             right: 40.0,
                             top: 10.0,
                             child: ClipOval(
                               child: Image.asset(
                                 "images/头像.jpg",
                                 width: 25.0,
                                 height: 25.0,
                               ),
                             ),
                           )
                         ],
                       ),
                     )
                   ]
                 )
               )
             )
           ),
           Container(
               decoration: BoxDecoration(
                   color: Colors.white,
               ),
               child: ListTile(
                   title: Text(
                       "我的小程序",
                       style: TextStyle(
                           fontSize: 12.0
                       )
                   ),
                   trailing: Container(
                       width: 200.0,
                       child: Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: <Widget> [
                             Container(
                               width: 200.0,
                               height: 50.0,
                               child: Stack(
                                 children: <Widget>[
                                   Positioned(
                                     right: 0.0,
                                     top: 10.0,
                                     child: ClipOval(
                                       child: Image.asset(
                                         "images/头像.jpg",
                                         width: 25.0,
                                         height: 25.0,
                                       ),
                                     ),
                                   ),
                                   Positioned(
                                     right: 20.0,
                                     top: 10.0,
                                     child: ClipOval(
                                       child: Image.asset(
                                         "images/头像.jpg",
                                         width: 25.0,
                                         height: 25.0,
                                       ),
                                     ),
                                   ),
                                   Positioned(
                                     right: 40.0,
                                     top: 10.0,
                                     child: ClipOval(
                                       child: Image.asset(
                                         "images/头像.jpg",
                                         width: 25.0,
                                         height: 25.0,
                                       ),
                                     ),
                                   )
                                 ],
                               ),
                             )
                           ]
                       )
                   )
               )
           ),
           Container(
             margin: const EdgeInsets.only(top: 10.0),
             color: Colors.white,
             child: ListTile(
               title: Text(
                 "最近使用",
                 style: TextStyle(
                   color: Colors.grey,
                   fontSize: 10.0
                 ),
               ),
               subtitle: Divider(),
             ),
           ),
           Container(
             color: Colors.white,
             child: ListTile(
               leading: Container(
                 margin: const EdgeInsets.only(bottom: 10.0),
                 child: Image.asset(
                   "images/头像.jpg",
                   width: 40.0,
                   height: 40.0,
                 ),
                ),
               title: Container(
                 child: Row(
                   children: <Widget>[
                     Text(
                       "MikuRua",
                       style: TextStyle(
                           fontSize: 13.0
                       ),
                     ),
                     Container(
                       margin: const EdgeInsets.only(left: 7.0),
                       padding: const EdgeInsets.all(2.0),
                       decoration: BoxDecoration(
                         color: Colors.grey,
                         borderRadius: BorderRadius.circular(1.0)
                       ),
                       child: Text(
                         "开发版",
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 8.0
                         ),
                       ),
                     ),
                     Expanded(
                       child: Container(
                         margin: const EdgeInsets.only(left: 150.0),
                         child: Icon(Icons.star, color: Colors.yellow,),
                       ),
                     )
                   ],
                 ),
               ),
               subtitle: Container(
                 height: 20.0,
                 decoration: BoxDecoration(
                   border: BorderDirectional(bottom: BorderSide(color: Colors.grey, width: .2))
                 ),
               ),
             ),
           )
         ]
       )
    );
  }
}
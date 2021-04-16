import 'package:flutter/material.dart';
import 'package:nudesk/src/widget/nav.dart';
import 'package:nudesk/src/widget/courseNav.dart';
import 'package:nudesk/src/widget/postCard.dart';
import './globalVar.dart' as globals;

class Forum extends StatefulWidget {
  @override
  _ForumState createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(globals.currentTab),
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.notifications),
            ),
            Builder(
              builder: (context) {
                return IconButton(
                  icon: Icon(Icons.menu_book),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                );
              },
            )
          ],
        ),
        drawer: NavDrawer(),
        endDrawer: CourseNavDrawer(),
        body: Center(
            child: Container(
                height: 1000,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/book2.png"),
                        fit: BoxFit.cover)))));
  }
}

import 'package:flutter/material.dart';
import 'package:nudesk/src/widget/nav.dart';
import 'package:nudesk/src/widget/postCard.dart';
import './globalVar.dart' as globals;
import 'package:nudesk/src/addPost.dart';

class Home extends StatefulWidget {
  String title;
  String userId;

  Home({Key key, this.userId, this.title}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var dummy = [
    {
      "number": "1",
      "course": "Math",
      "username": "17K-3755",
      "PostedOn": "2020-05-09",
      "Text": "Hello World",
      "Description": "This is nice description of Text"
    },
    {
      "number": "2",
      "course": "Math",
      "username": "17K-3755",
      "PostedOn": "2020-05-09",
      "Text": "Hello World",
      "Description": "This is nice description of Text"
    },
    {
      "number": "3",
      "course": "Math",
      "username": "17K-3755",
      "PostedOn": "2020-05-09",
      "Text": "Hello World",
      "Description": "This is nice description of Text"
    },
    {
      "number": "4",
      "course": "Math",
      "username": "17K-3755",
      "PostedOn": "2020-05-09",
      "Text": "Hello World",
      "Description": "This is nice description of Text"
    },
    {
      "number": "5",
      "course": "Math",
      "username": "17K-3755",
      "PostedOn": "2020-05-09",
      "Text": "Hello World",
      "Description": "This is nice description of Text"
    },
    {
      "number": "6",
      "course": "Math",
      "username": "17K-3755",
      "PostedOn": "2020-05-09",
      "Text": "Hello World",
      "Description": "This is nice description of Text"
    },
    {
      "number": "7",
      "course": "Math",
      "username": "17K-3755",
      "PostedOn": "2020-05-09",
      "Text": "Hello World",
      "Description": "This is nice description of Text"
    },
    {
      "number": "8",
      "course": "Math",
      "username": "17K-3755",
      "PostedOn": "2020-05-09",
      "Text": "Hello World",
      "Description": "This is nice description of Text"
    },
    {
      "number": "9",
      "course": "Math",
      "username": "17K-3755",
      "PostedOn": "2020-05-09",
      "Text": "Hello World",
      "Description": "This is nice description of Text"
    }
  ];

  Widget addPostButton() {
    return InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddPost()));
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.fromLTRB(15, 10, 275, 0),
          padding: EdgeInsets.symmetric(vertical: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xfffbb448), Color(0xfff7892b)])),
          child: Text(
            'Add Post',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.notifications),
            ),
          ],
          backgroundColor: Colors.black,
          title: Text(globals.currentTab),
        ),
        body: Center(
            child: Container(
                height: 1000,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/book2.png"),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    addPostButton(),
                    Container(
                        margin: EdgeInsets.only(top: 5),
                        height: MediaQuery.of(context).size.height * 0.79,
                        child: ListView.builder(
                          itemCount: dummy.length, // your List
                          itemBuilder: (context, index) {
                            var data = dummy[index];
                            return PostCard(data: data);
                          },
                        ))
                  ],
                ))));
  }
}

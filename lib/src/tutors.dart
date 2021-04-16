import 'package:flutter/material.dart';
import 'package:nudesk/src/widget/nav.dart';
import 'package:nudesk/src/widget/teacherCard.dart';
import './globalVar.dart' as globals;
import 'package:nudesk/src/addPost.dart';

class Tutors extends StatefulWidget {
  String title;
  String userId;

  Tutors({Key key, this.userId, this.title}) : super(key: key);
  @override
  _TutorsState createState() => _TutorsState();
}

class _TutorsState extends State<Tutors> {
  var dummy = [
    {
      "id": "1",
      "email": "nadeem@nu.edu.pk",
      "username": "17K-3755",
      "fullName": "Muhammad Nadeem",
      "courses": ["English", "Math", "Islamiat", "Science"],
    },
    {
      "id": "2",
      "email": "nadeem@nu.edu.pk",
      "username": "17K-3755",
      "fullName": "Muhammad Nadeem",
      "courses": ["English", "Math", "Islamiat", "Science"],
    },
    {
      "id": "3",
      "email": "nadeem@nu.edu.pk",
      "username": "17K-3755",
      "fullName": "Muhammad Nadeem",
      "courses": ["English", "Math", "Islamiat", "Science"],
    },
    {
      "id": "4",
      "email": "nadeem@nu.edu.pk",
      "username": "17K-3755",
      "fullName": "Muhammad Nadeem",
      "courses": ["English", "Math", "Islamiat", "Science"],
    },
  ];

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
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/book2.png"),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 5),
                        height: MediaQuery.of(context).size.height * 0.87,
                        child: ListView.builder(
                          itemCount: dummy.length, // your List
                          itemBuilder: (context, index) {
                            var data = dummy[index];
                            return TutorCards(data: data);
                          },
                        ))
                  ],
                ))));
  }
}

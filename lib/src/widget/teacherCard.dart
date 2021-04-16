import 'package:flutter/material.dart';

class TutorCards extends StatefulWidget {
  const TutorCards({Key key, @required this.data}) : super(key: key);

  final data;
  @override
  _TutorCardsState createState() => _TutorCardsState();
}

class _TutorCardsState extends State<TutorCards> {
  @override
  Widget build(BuildContext context) {
    var data = widget.data;
    return Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            boxShadow: [BoxShadow(color: Colors.white.withOpacity(0.6))]),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    data['fullName'],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          child: Text(
                        data['username'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/avatar.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(75.0)),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),

          Padding(padding: EdgeInsets.only(bottom: 3)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    "Email : ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [Text(data['email'])],
              ),
            ],
          ),
          Divider(),
          Text(
            "Courses",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          ListView(shrinkWrap: true, children: [
            SizedBox(
                height: 0,
                child: ListView.builder(
                  itemCount: data['courses'].length, // your List
                  itemBuilder: (context, index) {
                    return Text(data['courses'][index]);
                  },
                ))
          ]),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                      child: Chip(
                    label:
                        Row(children: [Text("Chat"), Icon(Icons.chat_bubble)]),
                    backgroundColor: Colors.brown[400],
                    elevation: 10,
                    autofocus: true,
                  ))
                ],
              ),
            ],
          )
          //Text(dummy[index]['course'].toString()),
        ]));
  }
}

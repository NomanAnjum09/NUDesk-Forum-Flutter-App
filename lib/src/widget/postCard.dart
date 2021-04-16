import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  const PostCard({Key key, @required this.data}) : super(key: key);

  final data;
  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
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
                    data['Text'],
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
          Padding(padding: EdgeInsets.only(bottom: 5)),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    data['Description'],
                  )
                ],
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [Text(data['PostedOn'])],
              ),
              Column(
                children: [Text("Course : " + data['course'])],
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 35),
                      child: Chip(
                        label: Container(
                          child: Icon(Icons.comment),
                          width: 50,
                          height: 30,
                        ),
                        backgroundColor: Colors.brown[400],
                        elevation: 10,
                        autofocus: true,
                      ))
                ],
              ),
              Column(
                children: [
                  Chip(
                    label: Container(
                      child: Icon(Icons.delete),
                      width: 50,
                      height: 30,
                    ),
                    shadowColor: Colors.blue,
                    backgroundColor: Colors.red,
                    elevation: 10,
                    autofocus: true,
                  )
                ],
              ),
            ],
          )
          //Text(dummy[index]['course'].toString()),
        ]));
  }
}

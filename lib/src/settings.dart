import 'package:flutter/material.dart';
import 'package:nudesk/src/widget/nav.dart';
import 'package:nudesk/src/widget/courseSettingNav.dart';
import 'package:nudesk/src/widget/postCard.dart';
import './globalVar.dart' as globals;

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  var data = {
    "fullName": "Noman Anjum",
    "userName": "17K-3755",
    "email": "k173755@nu.edu.pk"
  };

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("Current Password", isPassword: true),
        _entryField("New Password", isPassword: true),
        _entryField("Confirm Password", isPassword: true),
      ],
    );
  }

  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true))
        ],
      ),
    );
  }

  Widget addPostButton() {
    return InkWell(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(top: 20),
          width: MediaQuery.of(context).size.width / 3,
          padding: EdgeInsets.symmetric(vertical: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xfffbb448), Color(0xfff7892b)])),
          child: Text(
            'Change Password',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ));
  }

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
        endDrawer: CourseSettingNavDrawer(),
        body: Center(
            child: Container(
                height: 1000,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/book2.png"),
                        fit: BoxFit.cover)),
                child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        boxShadow: [
                          BoxShadow(color: Colors.white.withOpacity(0.6))
                        ]),
                    child: Column(children: [
                      Container(
                        padding: EdgeInsets.all(80),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/avatar.png"),
                              fit: BoxFit.scaleDown),
                          borderRadius: BorderRadius.all(Radius.circular(75.0)),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 30)),
                      Divider(
                        color: Colors.black,
                        height: 0,
                        thickness: 5,
                        indent: 20,
                        endIndent: 0,
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        height: 500,
                        child: Stack(
                          children: <Widget>[
                            Column(children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "User Name:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      )
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 13)),
                                  Column(
                                    children: [
                                      Text(
                                        data['userName'],
                                        style: TextStyle(fontSize: 18),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Text("Full Name:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18)),
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 22)),
                                  Column(
                                    children: [
                                      Text(
                                        data['fullName'],
                                        style: TextStyle(fontSize: 18),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Email:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      )
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 57)),
                                  Column(
                                    children: [
                                      Text(
                                        data['email'],
                                        style: TextStyle(fontSize: 18),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ]),
                            Padding(padding: EdgeInsets.only(bottom: 20)),
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 30,
                                    ),
                                    _emailPasswordWidget(),
                                    addPostButton()
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ])))));
  }
}

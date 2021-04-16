import 'package:flutter/material.dart';
import '../globalVar.dart' as globals;
import 'package:nudesk/src/home.dart';
import 'package:nudesk/src/forum.dart';
import 'package:nudesk/src/tutors.dart';
import 'package:nudesk/src/settings.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              '',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/logo.png'))),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(Icons.home_filled),
            title: Text('Home'),
            onTap: () => {
              globals.currentTab = 'Home',
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Home()))
            },
          ),
          ListTile(
            leading: Icon(Icons.forum),
            title: Text('Forum'),
            onTap: () => {
              globals.currentTab = 'Forum',
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Forum()))
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Tutors'),
            onTap: () => {
              globals.currentTab = 'Tutors',
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Tutors()))
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {
              globals.currentTab = 'Settings',
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Settings()))
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}

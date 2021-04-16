import 'package:flutter/material.dart';
import '../globalVar.dart' as globals;
import 'package:nudesk/src/home.dart';
import 'package:nudesk/src/forum.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseNavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(globals.courses);

    return Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.black),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  '\n  Your Courses',
                  style: GoogleFonts.theGirlNextDoor(
                    textStyle: Theme.of(context).textTheme.display1,
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                    color: Color(0xffe46b10),
                  ),
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.86,
                  child: ListView.builder(
                      itemCount: globals.courses.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Icon(Icons.menu_book_outlined,
                              color: Colors.white),
                          title: Text(
                            globals.courses[index],
                            style: TextStyle(color: Color(0xffe46b10)),
                          ),
                          onTap: () => {
                            globals.currentTab = 'Home',
                          },
                        );
                      })),
            ],
          ),
        ));
  }
}

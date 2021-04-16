import 'package:flutter/material.dart';
import '../globalVar.dart' as globals;
import 'package:google_fonts/google_fonts.dart';

class CourseSettingNavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(globals.courses);

    return Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.black),
        child: Drawer(
          child: Container(
              child: Column(
            children: <Widget>[
              ListTile(
                title: Text("\n\n        Your Courses",
                    style: GoogleFonts.theGirlNextDoor(
                      textStyle: Theme.of(context).textTheme.display1,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Color(0xffe46b10),
                    )),
              ),
              Divider(
                color: Colors.white,
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: ListView.builder(
                      itemCount: globals.courses.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                            title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                              Text(
                                globals.courses[index],
                                style: TextStyle(
                                    color: Color(0xffe46b10), fontSize: 15),
                              ),
                              Chip(
                                  backgroundColor: Colors.red,
                                  label: InkWell(
                                    child: Text("Drop Course",
                                        style: TextStyle(
                                            backgroundColor: Colors.red,
                                            color: Colors.white,
                                            fontSize: 10)),
                                    onTap: () => {
                                      globals.currentTab = 'Home',
                                    },
                                  )),
                            ]));
                      })),
              Divider(),
              ListTile(
                title: Text("        Available Courses",
                    style: GoogleFonts.theGirlNextDoor(
                      textStyle: Theme.of(context).textTheme.display1,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Color(0xffe46b10),
                    )),
              ),
              Divider(
                color: Colors.white,
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.32,
                  child: ListView.builder(
                      itemCount: globals.courses.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                            title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                              Text(
                                globals.courses[index],
                                style: TextStyle(
                                    color: Color(0xffe46b10), fontSize: 15),
                              ),
                              Chip(
                                  backgroundColor: Colors.blue,
                                  label: InkWell(
                                    child: Text("Select Course",
                                        style: TextStyle(
                                            backgroundColor: Colors.blue,
                                            color: Colors.white,
                                            fontSize: 10)),
                                    onTap: () => {
                                      globals.currentTab = 'Home',
                                    },
                                  )),
                            ]));
                      })),
            ],
          )),
        ));
  }
}

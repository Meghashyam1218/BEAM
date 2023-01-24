import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../teacher/timetable.dart';
import '../utilis/events.dart';
import '../utilis/materials/materials.dart';
import '../utilis/todo.dart';

class DashboardT extends StatefulWidget {
  const DashboardT({super.key});

  @override
  State<DashboardT> createState() => _DashboardTState();
}

class _DashboardTState extends State<DashboardT> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/materials': (BuildContext context) => Materials(),
        '/timeTable': (BuildContext context) => TimeTable(),
        '/to-Do': (BuildContext context) => ToDo(),
        '/eventsClg': (BuildContext context) => EventsClg(),
      },
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Color.fromARGB(255, 0, 0, 0),
          backgroundColor: Color.fromARGB(0, 0, 0, 0),
          shadowColor: Color.fromARGB(0, 0, 0, 0),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.account_circle_outlined,
              size: 24,
              color: Color.fromARGB(255, 62, 34, 201),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: (() {
                Navigator.popAndPushNamed(context, '/');
              }),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Icon(
                  Icons.login,
                  size: 24,
                  color: Color.fromARGB(255, 62, 34, 201),
                ),
              ),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: Color.fromARGB(0, 196, 94, 94),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Hello",
                    style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff343434)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Username.",
                    style: GoogleFonts.inter(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff343434)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListView(
              shrinkWrap: true,
              itemExtent: 100,
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.deepPurple[800],
                    child: Icon(
                      Icons.rule_outlined,
                      color: Colors.white,
                    ),
                  ),
                  title: Text("Post Attendance"),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  ),
                  onTap: () {
                    debugPrint("Landscape tapped");
                  },
                ),

                ListTile(
                  minVerticalPadding: 0,
                  leading: CircleAvatar(
                    backgroundColor: Colors.deepPurple[800],
                    child: Icon(Icons.rule_outlined, color: Colors.white),
                  ),
                  title: Text("Student analysis"),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  ),
                  onTap: () {},
                ),

                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.deepPurple[800],
                    child: Icon(
                      Icons.event_note,
                      color: Colors.white,
                    ),
                  ),
                  title: Text("Time Table"),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  ),
                ),

                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.deepPurple[800],
                    child: Icon(
                      Icons.menu_book_sharp,
                      color: Colors.white,
                    ),
                  ),
                  title: Text("Materials"),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.deepPurple[800],
                    child: Icon(
                      Icons.emoji_events_outlined,
                      color: Colors.white,
                    ),
                  ),
                  title: Text("Events"),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.deepPurple[800],
                    child: Icon(
                      Icons.toc_outlined,
                      color: Colors.white,
                    ),
                  ),
                  title: Text("To-Do"),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  ),
                ),
                //      Text("Yet another element in List"),

                //      Container(color: Colors.red, height: 50.0,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

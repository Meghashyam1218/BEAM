import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../teacher/timetable.dart';
import '../utilis/todo.dart';
import '../utilis/events.dart';
import '../utilis/materials.dart';

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
      theme: ThemeData(useMaterial3: true),
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
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 31.625,
                        backgroundColor: Color(0xff432cba),
                        child: Icon(Icons.rule_outlined,
                            size: 30, color: Colors.white),
                      ),
                      title: Text(
                        "Post Attendance",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {
                        Navigator.popAndPushNamed(context, "/materials");
                      },
                    ),
                  ),
                  Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 31.625,
                        backgroundColor: Color(0xff432cba),
                        child: Icon(Icons.analytics_outlined,
                            size: 30, color: Colors.white),
                      ),
                      title: Text(
                        "Student analysis",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 31.625,
                        backgroundColor: Color(0xff432cba),
                        child: Icon(Icons.event_note_outlined,
                            size: 30, color: Colors.white),
                      ),
                      title: Text(
                        "Time Table",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 31.625,
                        backgroundColor: Color(0xff432cba),
                        child: Icon(Icons.menu_book_outlined,
                            size: 30, color: Colors.white),
                      ),
                      title: Text(
                        "Materials",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),

                  Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 31.625,
                        backgroundColor: Color(0xff432cba),
                        child: Icon(Icons.emoji_events_outlined,
                            size: 30, color: Colors.white),
                      ),
                      title: Text(
                        "Events",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 31.625,
                        backgroundColor: Color(0xff432cba),
                        child: Icon(Icons.format_list_numbered_outlined,
                            size: 30, color: Colors.white),
                      ),
                      title: Text(
                        "To-Do",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),

                  //      Text("Yet another element in List"),

                  //      Container(color: Colors.red, height: 50.0,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

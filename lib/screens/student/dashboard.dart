import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Notifications', icon: Icons.notifications_outlined),
  const Choice(title: 'Materials', icon: Icons.menu_book_outlined),
  const Choice(title: 'Time Table', icon: Icons.event_note_outlined),
  const Choice(title: 'Events', icon: Icons.campaign_outlined),
  const Choice(title: 'Fee Dues', icon: Icons.request_quote_outlined),
  const Choice(title: 'To-Do', icon: Icons.format_list_numbered_outlined),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print(this.choice.title),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff5c45d3),
          ),
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    choice.icon,
                    color: Colors.white,
                    size: 48.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      choice.title,
                      selectionColor: Colors.white,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
          )),
    );
  }
}  

class DashboardS extends StatefulWidget {
  const DashboardS({super.key});

  @override
  State<DashboardS> createState() => _DashboardSState();
}

class _DashboardSState extends State<DashboardS> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        body: SingleChildScrollView(
          // scrollDirection: Axis.horizontal,
          child: Container(
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
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: 330,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                    decoration: BoxDecoration(
                      color: Color(0xffEDEAFA),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Academmic Analysis",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xff343434)),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 30,
                                color: Color(0xff432CBA),
                              ),
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(0)),
                                minimumSize:
                                    MaterialStateProperty.all(Size.zero),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                shadowColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                surfaceTintColor: MaterialStateProperty.all(
                                    Colors.transparent),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              child: Stack(
                                children: [
                                  SizedBox(
                                    width: 100,
                                    height: 100,
                                    child: CircularProgressIndicator(
                                      value: .7,
                                      strokeWidth: 14.0,
                                      color: Color(0xff432CBA),
                                      backgroundColor: Color(0xffC9C1F0),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      "70%",
                                      style: GoogleFonts.inter(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              padding: EdgeInsets.only(left: 20),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Regulation : R19",
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: .1),
                                  ),
                                  Text(
                                    "Current Semester : 4-1",
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: .1),
                                  ),
                                  Text(
                                    "No.of arrears : 0",
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: .1),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 250,
                  child: GridView.count(
                    // scrollDirection: Axis.horizontal,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                    crossAxisCount: 3,
                    children: List.generate(choices.length, (index) {
                      return Center(
                        child: SelectCard(choice: choices[index]),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

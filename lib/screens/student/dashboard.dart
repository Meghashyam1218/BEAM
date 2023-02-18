import 'package:beam/color_schemes.g.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardS extends StatefulWidget {
  const DashboardS({super.key});

  @override
  State<DashboardS> createState() => _DashboardSState();
}

class _DashboardSState extends State<DashboardS> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: const Color.fromARGB(255, 0, 0, 0),
          backgroundColor: const Color.fromARGB(0, 0, 0, 0),
          shadowColor: const Color.fromARGB(0, 0, 0, 0),
          leading: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.account_circle_outlined,
              size: 24,
              color: Color.fromARGB(255, 62, 34, 201),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: (() {
                GoRouter.of(context).pop();
              }),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Icon(Icons.login,
                    size: 24, color: lightColorScheme.primary),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          // scrollDirection: Axis.horizontal,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: lightColorScheme.background,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HelloUser(),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push("/academic");
                    },
                    child: const AcademicCard(),
                  ),
                ),
                const SizedBox(
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

class AcademicCard extends StatelessWidget {
  const AcademicCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      decoration: BoxDecoration(
        color: lightColorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          const AcademicTopRow(),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: progressCircular(),
              ),
              academicDetails()
            ],
          ),
        ],
      ),
    );
  }

  Container academicDetails() {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Regulation : R19",
            style: GoogleFonts.inter(
                fontWeight: FontWeight.bold, letterSpacing: .1),
          ),
          Text(
            "Current Semester : 4-1",
            style: GoogleFonts.inter(
                fontWeight: FontWeight.bold, letterSpacing: .1),
          ),
          Text(
            "No.of arrears : 0",
            style: GoogleFonts.inter(
                fontWeight: FontWeight.bold, letterSpacing: .1),
          ),
        ],
      ),
    );
  }

  Stack progressCircular() {
    return Stack(
      children: [
        const SizedBox(
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
            style: GoogleFonts.inter(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

class AcademicTopRow extends StatelessWidget {
  const AcademicTopRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Academmic Analysis",
          style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: const Color(0xff343434)),
        ),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
            minimumSize: MaterialStateProperty.all(Size.zero),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            surfaceTintColor: MaterialStateProperty.all(Colors.transparent),
          ),
          child: const Icon(
            Icons.arrow_forward_ios,
            size: 30,
            color: Color(0xff432CBA),
          ),
        )
      ],
    );
  }
}

class HelloUser extends StatelessWidget {
  const HelloUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          "Hello",
          style: GoogleFonts.inter(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: const Color(0xff343434)),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Username.",
          style: GoogleFonts.inter(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: const Color(0xff343434)),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class Choice {
  const Choice({required this.title, required this.icon, required this.path});
  final String title;
  final IconData icon;
  final String path;
}

const List<Choice> choices = <Choice>[
  Choice(
      path: '/materials', title: 'Materials', icon: Icons.menu_book_outlined),
  Choice(
      path: '/timeTable', title: 'Time Table', icon: Icons.event_note_outlined),
  Choice(path: '/events', title: 'Events', icon: Icons.emoji_events_outlined),
  Choice(
      path: '/notifications',
      title: 'Notifications',
      icon: Icons.notifications_outlined),
  Choice(
      path: '/feeDues', title: 'Fee Dues', icon: Icons.request_quote_outlined),
  Choice(
      path: '/toDo', title: 'To-Do', icon: Icons.format_list_numbered_outlined),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(choice.path);
      },
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xff5c45d3),
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
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
          )),
    );
  }
}

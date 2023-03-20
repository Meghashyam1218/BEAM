import 'package:beam/components/appbar_dash.dart';
import 'package:beam/components/drawer.dart';
import 'package:beam/components/hello_user.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardT extends StatefulWidget {
  const DashboardT({super.key});

  @override
  State<DashboardT> createState() => _DashboardTState();
}

class _DashboardTState extends State<DashboardT> {


  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        drawer: const AppDrawer(),
        appBar: const BeamAppBarDash(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: const Color.fromARGB(0, 196, 94, 94),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 10,
                  ),
                  HelloUser()
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
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        child: Icon(Icons.rule_outlined,
                            size: 30,
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                      title: Text(
                        "Post Attendance",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.onBackground),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 31.625,
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        child: Icon(Icons.analytics_outlined,
                            size: 30,
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                      title: Text(
                        "Student Analysis",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.onBackground),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                      ),
                      onTap: () {
                        Future.delayed(const Duration(milliseconds: 100), () {
                          GoRouter.of(context).pushNamed("academic",
                              params: {"loginFlag": "true"});
                        });
                      },
                    ),
                  ),
                  Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 31.625,
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        child: Icon(Icons.event_note,
                            size: 30,
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                      title: Text(
                        "Time Table",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.onBackground),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                      ),
                      onTap: () {
                        Future.delayed(const Duration(milliseconds: 100), () {
                          GoRouter.of(context).pushNamed("timeTable");
                        });
                      },
                    ),
                  ),
                  Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 31.625,
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        child: Icon(Icons.file_copy_outlined,
                            size: 30,
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                      title: Text(
                        "Materials",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.onBackground),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                      ),
                      onTap: () {
                        Future.delayed(const Duration(milliseconds: 100), () {
                          GoRouter.of(context).pushNamed("materials");
                        });
                      },
                    ),
                  ),
                  Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 31.625,
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        child: Icon(Icons.emoji_events_outlined,
                            size: 30,
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                      title: Text(
                        "Events",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.onBackground),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                      ),
                      onTap: () {
                        Future.delayed(const Duration(milliseconds: 100), () {
                          GoRouter.of(context).pushNamed("events");
                        });
                      },
                    ),
                  ),
                  Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 31.625,
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        child: Icon(Icons.format_list_numbered_outlined,
                            size: 30,
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                      title: Text(
                        "To Do",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.onBackground),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                      ),
                      onTap: () {
                        Future.delayed(const Duration(milliseconds: 100), () {
                          GoRouter.of(context).pushNamed("toDo");
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}

import 'package:beam/color_schemes.g.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Choice {
  const Choice({required this.title, required this.icon, required this.path});
  final String title;
  final IconData icon;
  final String path;
}

const List<Choice> choices = <Choice>[
  Choice(path: 'materials', title: 'Materials', icon: Icons.menu_book_outlined),
  Choice(
      path: 'timeTable', title: 'Time Table', icon: Icons.event_note_outlined),
  Choice(path: 'events', title: 'Events', icon: Icons.emoji_events_outlined),
  Choice(
      path: 'notifications',
      title: 'Notifications',
      icon: Icons.notifications_outlined),
  Choice(
      path: 'feeDues', title: 'Fee Dues', icon: Icons.request_quote_outlined),
  Choice(
      path: 'toDo', title: 'To-Do', icon: Icons.format_list_numbered_outlined),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).pushNamed(choice.path);
      },
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: lightColorScheme.primary,
          ),
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    choice.icon,
                    color: lightColorScheme.onPrimary,
                    size: 48.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      choice.title,
                      selectionColor: lightColorScheme.onPrimary,
                      style: TextStyle(
                          color: lightColorScheme.onPrimary,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
          )),
    );
  }
}

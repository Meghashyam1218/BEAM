import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EventsClg extends StatefulWidget {
  const EventsClg({super.key});

  @override
  State<EventsClg> createState() => _EventsClgState();
}

class _EventsClgState extends State<EventsClg> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            child: const Text("EventsClg"),
          ),
        ),
        
      ),
    );
  }
}

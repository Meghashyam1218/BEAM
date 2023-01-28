import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({super.key});

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            child: const Text("timetable"),
          ),
        ),
      ),
    );
  }
}

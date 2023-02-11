import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

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
          appBar: AppBar(
            foregroundColor: const Color.fromARGB(255, 0, 0, 0),
            backgroundColor: const Color(0xff5240b5),
            shadowColor: const Color.fromARGB(0, 220, 30, 30),
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: (() {}),
                child: const Icon(
                  Icons.account_circle_outlined,
                  size: 24,
                  color: Colors.white,
                ),
              ),
            ),
            actions: [
              GestureDetector(
                onTap: (() {
                  GoRouter.of(context).pop();
                }),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Icon(
                    Icons.home_outlined,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                color: const Color(0xff5240b5),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 15),
                  child: Text(
                    "Time Table",
                    style: GoogleFonts.inter(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                // color: Colors.grey.shade100,
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: const DaySelection(),
                    ),
                  ],
                ),
              ),
              const ClassName(),
            ],
          )),
    );
  }
}

enum Calendar { monday, tuesday, wednesday, thursaday, friday, saturday }

class DaySelection extends StatefulWidget {
  const DaySelection({super.key});

  @override
  State<DaySelection> createState() => _DaySelectionState();
}

class _DaySelectionState extends State<DaySelection> {
  Calendar timeTableView = Calendar.monday;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Calendar>(
      segments: const <ButtonSegment<Calendar>>[
        ButtonSegment<Calendar>(
            value: Calendar.monday,
            label: Text('Monday'),
            icon: Icon(Icons.calendar_view_day)),
        ButtonSegment<Calendar>(
            value: Calendar.tuesday,
            label: Text('Tuesday'),
            icon: Icon(Icons.calendar_view_week)),
        ButtonSegment<Calendar>(
            value: Calendar.wednesday,
            label: Text('Wednesday'),
            icon: Icon(Icons.calendar_view_month)),
        ButtonSegment<Calendar>(
            value: Calendar.thursaday,
            label: Text('Thursday'),
            icon: Icon(Icons.calendar_view_day)),
        ButtonSegment<Calendar>(
            value: Calendar.friday,
            label: Text('Friday'),
            icon: Icon(Icons.calendar_view_week)),
        ButtonSegment<Calendar>(
            value: Calendar.saturday,
            label: Text('Saturday'),
            icon: Icon(Icons.calendar_view_month)),
      ],
      selected: <Calendar>{timeTableView},
      onSelectionChanged: (Set<Calendar> newSelection) {
        setState(() {
          // By default there is only a single segment that can be
          // selected at one time, so its value is always the first
          // item in the selected set.
          timeTableView = newSelection.first;
        });
      },
    );
  }
}

class ClassName extends StatefulWidget {
  const ClassName({super.key});

  @override
  State<ClassName> createState() => ClassNameState();
}

class ClassNameState extends State<ClassName> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color.fromARGB(108, 232, 231, 235),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.deepPurpleAccent,
          ),
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("periodtime.name",
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff5240b5),
                )),
            Text(
              "9:10 - 10:00",
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600, color: Colors.black45),
            ),
          ],
        ),
      ),
    );
  }
}

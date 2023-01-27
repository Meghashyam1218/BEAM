import 'package:flutter/material.dart';
import 'screens/login/login.dart';
import './screens/student/dashboard.dart';
import './screens/teacher/dashboard.dart';
import './screens/teacher/timetable.dart';
import './screens/utilis/todo.dart';
import './screens/utilis/events.dart';
import './screens/utilis/materials.dart';

void main() {
  runApp(Beam());
}

class Beam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),

      title: 'Flutter Demo',
      routes: {
        '/': (BuildContext context) => Login(),
        '/dashboardS': (BuildContext context) => DashboardS(),
        '/dashboardT': (BuildContext context) => DashboardT(),
        '/materials': (BuildContext context) => Materials(),
        '/timeTable': (BuildContext context) => TimeTable(),
        '/to-Do': (BuildContext context) => ToDo(),
        '/eventsClg': (BuildContext context) => EventsClg(),
      },
    );
  }
}

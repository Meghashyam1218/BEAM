import 'package:flutter/material.dart';
import 'screens/login/login.dart';
import './screens/student/dashboard.dart';
import './screens/teacher/dashboard.dart';
import './screens/teacher/timetable.dart';
import './screens/utilis/todo.dart';
import './screens/utilis/events.dart';
import './screens/utilis/materials.dart';
import 'package:beam/routes.dart';

void main() {
  
  runApp(Beam());
}

class Beam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      title: 'Flutter Demo',
    );
  }
}

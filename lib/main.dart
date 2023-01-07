import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import './screens/login.dart';
import './screens/student/dashboard.dart';
import './screens/teacher/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      routes: {
        '/': (BuildContext context) => Login(),
        '/dashboardS': (BuildContext context) => DashboardS(),
        '/dashboardT': (BuildContext context) => DashboardT(),
      },
    );
  }
}

import 'package:beam/screens/academics/academic.dart';
import 'package:beam/screens/events/events.dart';
import 'package:beam/screens/feedues/feedues.dart';
import 'package:beam/screens/login/login.dart';
import 'package:beam/screens/materials/materials.dart';
import 'package:beam/screens/notifications/notifications.dart';
import 'package:beam/screens/profile/profile.dart';
import 'package:beam/screens/student_dashboard/dashboard.dart';
import 'package:beam/screens/teacher_dashboard/dashboard.dart';
import 'package:beam/screens/timetable/timetable.dart';
import 'package:beam/screens/todo/todo.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

getToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString('token');

  return token;
}

getLoginProfile() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return bool
  bool? login = prefs.getBool('login');
  print(login);
  return login;
}

setLoginProfile(login) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('login', login);
}

setToken(token) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('token', token);
}

final goroutes = GoRouter(
  routes: [
    GoRoute(
      name: "login",
      path: '/',
      pageBuilder: (context, state) {
        return const MaterialPage(child: Login());
      },
      redirect: (BuildContext context, GoRouterState state) async {
        var myToken = await getToken();
        var login = await getLoginProfile();
        print(myToken);
        if (login == null) {
          myToken = "";
          login = false;
        }
        var authenticated = (myToken != "");
        var isAuthenticated = authenticated;
        if (isAuthenticated) {
          if (login) {
            return '/dashboardT';
          } else {
            return '/dashboardS';
          }
        } else {
          return null;
        }
      },
    ),
    GoRoute(
        name: 'dashboardT',
        path: '/dashboardT',
        pageBuilder: (context, state) {
          return const MaterialPage(child: DashboardT());
        }),
    GoRoute(
        name: 'dashboardS',
        path: '/dashboardS',
        pageBuilder: (context, state) {
          return const MaterialPage(child: DashboardS());
        }),
    GoRoute(
        name: 'materials',
        path: '/materials',
        pageBuilder: (context, state) {
          return const MaterialPage(child: Materials());
        }),
    GoRoute(
        name: 'timeTable',
        path: '/timeTable',
        pageBuilder: (context, state) {
          return const MaterialPage(child: TimeTable());
        }),
    GoRoute(
        name: 'events',
        path: '/events',
        pageBuilder: (context, state) {
          return const MaterialPage(child: EventsClg());
        }),
    GoRoute(
        name: 'toDo',
        path: '/toDo',
        pageBuilder: (context, state) {
          return const MaterialPage(child: ToDo());
        }),
    GoRoute(
        name: 'feeDues',
        path: '/feeDues',
        pageBuilder: (context, state) {
          return const MaterialPage(child: FeeDues());
        }),
    GoRoute(
        name: 'notifications',
        path: '/notifications',
        pageBuilder: (context, state) {
          return const MaterialPage(child: Notifications());
        }),
    GoRoute(
        name: 'profile',
        path: '/profile',
        pageBuilder: (context, state) {
          return const MaterialPage(child: ProfilePage());
        }),
    GoRoute(
      name: 'academic',
      path: '/academic/:loginFlag',
      builder: (context, state) => Academic(
        loginFlag: state.params['loginFlag']!,
      ),
    ),
  ],
);

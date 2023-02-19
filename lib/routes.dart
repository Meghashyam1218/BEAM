import 'package:beam/screens/login/login.dart';
import 'package:beam/screens/student/dashboard.dart';
import 'package:beam/screens/student/feedues.dart';
import 'package:beam/screens/student/notifications.dart';
import 'package:beam/screens/student/timetable.dart';
import 'package:beam/screens/teacher/dashboard.dart';
import 'package:beam/screens/utilis/academic.dart';
import 'package:beam/screens/utilis/events.dart';
import 'package:beam/screens/utilis/materials.dart';
import 'package:beam/screens/utilis/profile.dart';
import 'package:beam/screens/utilis/todo.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
final goroutes = GoRouter(
  routes: [
    GoRoute(
        name: "login",
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(child: Login());
        }),
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
        }
    ),
    GoRoute(
        name: 'timeTable',
      path: '/timeTable',
        pageBuilder: (context, state) {
          return const MaterialPage(child: TimeTable());
        }
    ),
    GoRoute(
        name: 'events',
      path: '/events',
        pageBuilder: (context, state) {
          return const MaterialPage(child: EventsClg());
        }
    ),
    GoRoute(
        name: 'toDo',
      path: '/toDo',
        pageBuilder: (context, state) {
          return const MaterialPage(child: ToDo());
        }
    ),
    GoRoute(
        name: 'feeDues',
      path: '/feeDues',
        pageBuilder: (context, state) {
          return const MaterialPage(child: FeeDues());
        }
    ),
    GoRoute(
        name: 'notifications',
      path: '/notifications',
        pageBuilder: (context, state) {
          return const MaterialPage(child: Notifications());
        }
    ),
    GoRoute(
        name: 'profile',
      path: '/profile',
        pageBuilder: (context, state) {
          return const MaterialPage(child: ProfilePage());
        }
    ),
    GoRoute(
      name: 'academic',
      path: '/academic/:loginFlag',
      builder: (context, state) => Academic(
        loginFlag: state.params['loginFlag']!,
      ),
    ),
  ],
);


import 'package:beam/screens/login/login.dart';
import 'package:beam/screens/student/dashboard.dart';
import 'package:beam/screens/student/feedues.dart';
import 'package:beam/screens/student/notifications.dart';
import 'package:beam/screens/student/timetable.dart';
import 'package:beam/screens/teacher/dashboard.dart';
import 'package:beam/screens/utilis/events.dart';
import 'package:beam/screens/utilis/materials.dart';
import 'package:beam/screens/utilis/profile.dart';
import 'package:beam/screens/utilis/todo.dart';
import 'package:go_router/go_router.dart';

final goroutes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Login(),
    ),
    GoRoute(
      path: '/dashboardT',
      builder: (context, state) => const DashboardT(),
    ),
    GoRoute(
      path: '/dashboardS',
      builder: (context, state) => const DashboardS(),
    ),
    GoRoute(
      path: '/materials',
      builder: (context, state) => const Materials(),
    ),
    GoRoute(
      path: '/timeTable',
      builder: (context, state) => const TimeTable(),
    ),
    GoRoute(
      path: '/events',
      builder: (context, state) => const EventsClg(),
    ),
    GoRoute(
      path: '/toDo',
      builder: (context, state) => const ToDo(),
    ),
    GoRoute(
      path: '/feeDues',
      builder: (context, state) => const FeeDues(),
    ),
    GoRoute(
      path: '/notifications',
      builder: (context, state) => const Notifications(),
    ),
    GoRoute(
      path: '/academic',
      builder: (context, state) => const Notifications(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => ProfilePage(),
    ),
  ],
);

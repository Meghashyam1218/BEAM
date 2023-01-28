import 'package:beam/screens/login/login.dart';
import 'package:beam/screens/student/dashboard.dart';
import 'package:beam/screens/student/feedues.dart';
import 'package:beam/screens/student/notifications.dart';
import 'package:beam/screens/student/timetable.dart';
import 'package:beam/screens/teacher/dashboard.dart';
import 'package:beam/screens/utilis/events.dart';
import 'package:beam/screens/utilis/materials.dart';
import 'package:beam/screens/utilis/todo.dart';
import 'package:go_router/go_router.dart';

final Routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => Login(),
    ),
    GoRoute(
      path: '/dashboardT',
      builder: (context, state) => DashboardT(),
    ),
    GoRoute(
      path: '/dashboardS',
      builder: (context, state) => DashboardS(),
    ),
    GoRoute(
      path: '/materials',
      builder: (context, state) => Materials(),
    ),
    GoRoute(
      path: '/timeTable',
      builder: (context, state) => TimeTable(),
    ),
    GoRoute(
      path: '/events',
      builder: (context, state) => EventsClg(),
    ),
    GoRoute(
      path: '/toDo',
      builder: (context, state) => ToDo(),
    ),
    GoRoute(
      path: '/feeDues',
      builder: (context, state) => FeeDues(),
    ),
    GoRoute(
      path: '/notifications',
      builder: (context, state) => Notifications(),
    ),
    GoRoute(
      path: '/academic',
      builder: (context, state) => Notifications(),
    ),
  ],
);

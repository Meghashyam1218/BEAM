import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BeamAppBarDash extends StatelessWidget implements PreferredSizeWidget {
  // final GlobalKey? scaffoldKey;
  const BeamAppBarDash({
    super.key,
  });
  setToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', "");
  }

  @override
  Widget build(BuildContext context) {
    // var key = scaffoldKey;
    return AppBar(
      foregroundColor: const Color.fromARGB(255, 0, 0, 0),
      backgroundColor: const Color.fromARGB(0, 0, 0, 0),
      shadowColor: const Color.fromARGB(0, 0, 0, 0),
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: Icon(
              Icons.menu,
              size: 30,
              color: Theme.of(context).colorScheme.primary,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      actions: [
        GestureDetector(
          onTap: (() {
            setToken();
            GoRouter.of(context).pushReplacementNamed("login");
          }),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Icon(Icons.login,
                size: 30, color: Theme.of(context).colorScheme.primary),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

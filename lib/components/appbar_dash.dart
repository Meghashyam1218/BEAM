import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class BeamAppBarDash extends StatelessWidget implements PreferredSizeWidget {
  const BeamAppBarDash({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: const Color.fromARGB(255, 0, 0, 0),
      backgroundColor: const Color.fromARGB(0, 0, 0, 0),
      shadowColor: const Color.fromARGB(0, 0, 0, 0),
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GestureDetector(
          onTap: ((() {
            GoRouter.of(context).pushNamed('profile');
          })),
          child: Icon(
            Icons.account_circle_outlined,
            size: 30,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: (() {
            GoRouter.of(context).pop();
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

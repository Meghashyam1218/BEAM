import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';


class BeamAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? name;
  const BeamAppBar({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        GestureDetector(
          onTap: (() {
            GoRouter.of(context).pop();
          }),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Icon(
              Icons.home_outlined,
              size: 30,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        )
      ],
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: Icon(
              Icons.menu,
              size: 30,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(20),
      )),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(116.0), // here the desired height
        child: Container(
          
          width: double.infinity,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).colorScheme.primary,

          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 15),
            child: Text(
              name!,
              style: GoogleFonts.inter(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        ),
      ),
      foregroundColor: const Color.fromARGB(255, 0, 0, 0),
      backgroundColor: Theme.of(context).colorScheme.primary,
      shadowColor: const Color.fromARGB(0, 0, 0, 0),
    );
      
  }

  @override
  Size get preferredSize => const Size.fromHeight(116);
}

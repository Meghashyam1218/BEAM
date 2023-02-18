import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color_schemes.g.dart';

class BeamAppBar extends StatelessWidget implements PreferredSizeWidget {
  String? name;
  BeamAppBar({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(116.0), // here the desired height
        child: Container(
          width: double.infinity,
          color: lightColorScheme.primary,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 15),
            child: Text(
              name!,
              style: GoogleFonts.inter(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: lightColorScheme.onPrimary,
              ),
            ),
          ),
        ),
      ),
      foregroundColor: const Color.fromARGB(255, 0, 0, 0),
      backgroundColor: lightColorScheme.primary,
      shadowColor: const Color.fromARGB(0, 0, 0, 0),
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GestureDetector(
          onTap: ((() {
            GoRouter.of(context).push('/profile');
          })),
          child: const Icon(
            Icons.account_circle_outlined,
            size: 24,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: (() {
            GoRouter.of(context).pop();
          }),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Icon(
              Icons.home_outlined,
              size: 24,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(116);
}

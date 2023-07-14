import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelloUser extends StatelessWidget {
  String name;
  HelloUser({
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          "Hello",
          style: GoogleFonts.inter(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onBackground),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: GoogleFonts.inter(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onBackground),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

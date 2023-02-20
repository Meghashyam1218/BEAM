import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcademicDetails extends StatelessWidget {
  const AcademicDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Regulation : R19",
            style: GoogleFonts.inter(
                fontWeight: FontWeight.bold, letterSpacing: .1),
          ),
          Text(
            "Current Semester : 4-1",
            style: GoogleFonts.inter(
                fontWeight: FontWeight.bold, letterSpacing: .1),
          ),
          Text(
            "No.of arrears : 0",
            style: GoogleFonts.inter(
                fontWeight: FontWeight.bold, letterSpacing: .1),
          ),
        ],
      ),
    );
  }
}

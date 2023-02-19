import 'package:beam/color_schemes.g.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgressCircular extends StatelessWidget {
  const ProgressCircular({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Stack(
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: CircularProgressIndicator(
              value: .7,
              strokeWidth: 14.0,
              color: lightColorScheme.primary,
              backgroundColor: const Color(0xffC9C1F0),
            ),
          ),
          Center(
            child: Text(
              "70%",
              style:
                  GoogleFonts.inter(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}

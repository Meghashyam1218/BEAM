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
              color: Theme.of(context).colorScheme.primary,
              backgroundColor: Theme.of(context).colorScheme.outline,
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

import 'package:beam/components/academic/progress_circular.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../color_schemes.g.dart';
import 'academic_details.dart';
import 'academic_top_row.dart';

class AcademicCard extends StatelessWidget {
  const AcademicCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context)
              .pushNamed("academic", params: {"loginFlag": "false"});
        },
        child: Container(
          width: 330,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          decoration: BoxDecoration(
            color: lightColorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              const AcademicTopRow(),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  ProgressCircular(),
                  AcademicDetails(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

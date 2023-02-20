import 'package:beam/screens/student_dashboard/components/academic/progress_circular.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../color_schemes.g.dart';
import 'academic/academic_details.dart';
import 'academic/academic_top_row.dart';

class AcademicCard extends StatelessWidget {
  const AcademicCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        child: InkWell(
          borderRadius: BorderRadius.circular(25),
          splashColor: lightColorScheme.tertiary.withOpacity(0.05),
          onTap: () {
            Future.delayed(const Duration(milliseconds: 100), () {
              GoRouter.of(context)
                  .pushNamed("academic", params: {"loginFlag": "false"});
            });
          },
          child: Ink(
            decoration: BoxDecoration(
              color: lightColorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(25),
            ),
            child: SizedBox(
              width: 330,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                child: Column(
                  children: [
                    const AcademicTopRow(),
                    const SizedBox(height: 10),
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
          ),
        ),
      ),
    );
  }
}

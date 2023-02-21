import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class CardsAcademic extends StatefulWidget {
  const CardsAcademic({super.key});

  @override
  State<CardsAcademic> createState() => _CardsAcademicState();
}

class _CardsAcademicState extends State<CardsAcademic> {
  @override
  Widget build(BuildContext context) {
    List<String> sems = [
      "4-2",
      "4-1",
      "3-2",
      "3-1",
      "2-2",
      "2-1",
      "1-2",
      "1-1"
    ];
    List<String> percentage = [
      "55%",
      "55%",
      "55%",
      "55%",
      "55%",
      "55%",
      "55%",
      "55%"
    ];
    List<String> cgpa = [
      "6.1",
      "6.1",
      "6.1",
      "6.1",
      "6.1",
      "6.1",
      "6.1",
      "6.1"
    ];
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: List.generate(
        sems.length,
        (index) => Card(
          color:
              index == 0
              ? const Color(0xff8d7dfd)
              : index == 1
                  ? const Color(0xffCD5DD8)
                  : index == 2
                      ? const Color(0xffe16cc1)
                      : index == 3
                          ? const Color(0xfffe2c81)
                          : index == 4
                              ? const Color(0xff8d7dfd)
                              : index == 5
                                  ? const Color(0xffCD5DD8)
                                  : index == 6
                                      ? const Color(0xffe16cc1)
                                      : index == 7
                                          ? const Color(0xfffe2c81)
                                          : const Color(0xff9032ff),
          child: InkWell(
            splashColor:
                Theme.of(context)
                .colorScheme
                .background
                .withOpacity(0.5), // Splash color
            onTap: () {
              Future.delayed(const Duration(milliseconds: 100), () {
                GoRouter.of(context).pop();
              });
            },
            child: Ink(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    sems[index],
                    style: GoogleFonts.inter(
                        fontSize: 50,
                        color: Colors.lightGreen[50],
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Percentage :${percentage[index]}",
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        color: Colors.lightGreen[50],
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "CGPA :${cgpa[index]}",
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        color: Colors.lightGreen[50],
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

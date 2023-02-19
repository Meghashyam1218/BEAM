import 'package:beam/components/cards_academic.dart';
import 'package:beam/components/appbar.dart';
import 'package:beam/components/dropdown.dart';
import 'package:flutter/material.dart';

class Academic extends StatefulWidget {
  final String loginFlag;
  const Academic({super.key, required this.loginFlag});
  @override
  State<Academic> createState() => _AcademicState();
}

class _AcademicState extends State<Academic> {
  // _AcademicState() {
  //   dropdownValue = listnumber.first;
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const BeamAppBar(name: "Academics"),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.loginFlag == "true")
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: DropdownList(
                        dropdownlistValues: <String>[
                        '1',
                        '2',
                        '3',
                        '4',
                        '5',
                        '6',
                        '7',
                        '8'
                      ],
                      nameValue: "Semester",
                    ),
                  ),
                  
                ],
              ),
            ),
            const Expanded(child: CardsAcademic()),
          ],
        ),
      ),
    );
  }
}

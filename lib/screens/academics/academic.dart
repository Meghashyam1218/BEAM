import 'package:beam/components/appbar.dart';
// import 'package:beam/components/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../color_schemes.g.dart';
import 'components/cards_academic.dart';

class Academic extends StatefulWidget {
  final String loginFlag;
  const Academic({super.key, required this.loginFlag});
  @override
  State<Academic> createState() => _AcademicState();
}

class _AcademicState extends State<Academic> {
  @override
  void initState() {
    if (widget.loginFlag == "false") showCards = true;
    super.initState();
  }

  bool showCards = false;
  FocusNode redgNo = FocusNode();
  // String? yearValue;
  // String? semesterValue;
  // year(String val) {
  //   setState(() {
  //     yearValue = val;
  //   });
  // }

  // semester(String val) {
  //   setState(() {
  //     semesterValue = val;
  //   });
  // }

  final textControllerRedgNo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // print("${redgNo.hasFocus}");
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          appBar: const BeamAppBar(name: "Academics"),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // if (widget.loginFlag == "true")
                    //   Padding(
                    //     padding: const EdgeInsets.all(8.0),
                    //     child: DropdownList(
                    //       dropdownlistValues: const <String>[
                    //         '1',
                    //         '2',
                    //         '3',
                    //         '4',
                    //       ],
                    //       nameValue: "Year",
                    //       onChange: year,
                    //     ),
                    //   ),
                    // if (widget.loginFlag == "true")
                    //   Padding(
                    //     padding: const EdgeInsets.all(8.0),
                    //     child: DropdownList(
                    //       dropdownlistValues: const <String>[
                    //         '1',
                    //         '2',
                    //         '3',
                    //         '4',
                    //         '5',
                    //         '6',
                    //         '7',
                    //         '8'
                    //       ],
                    //       nameValue: "Semester",
                    //       onChange: semester,
                    //     ),
                    //   ),
                    if (widget.loginFlag == "true")
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Redg. No.",
                              style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: lightColorScheme.onBackground),
                            ),
                            const SizedBox(width: 40),
                            Flexible(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: TextField(
                                textAlign: TextAlign.center,
                                focusNode: redgNo,
                                textInputAction: TextInputAction.done,
                                textCapitalization:
                                    TextCapitalization.characters,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    contentPadding: const EdgeInsets.all(0),
                                    constraints:
                                        const BoxConstraints(maxHeight: 50),
                                    hintText:
                                        !redgNo.hasFocus ? "19NRXXXX5" : "",
                                    filled: true,
                                    fillColor:
                                        lightColorScheme.primaryContainer,
                                    border: OutlineInputBorder(
                                        gapPadding: 0,
                                        borderRadius:
                                            BorderRadius.circular(25))),
                              ),
                            )),
                          ],
                        ),
                      ),
                    if (widget.loginFlag == "true")
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: SizedBox(
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    lightColorScheme.tertiaryContainer),
                                foregroundColor: MaterialStateProperty.all(
                                    lightColorScheme.onTertiaryContainer),
                              ),
                              onPressed: () {
                                setState(() {
                                  showCards = true;
                                });
                              },
                              child: const Text("Get Results")),
                        ),
                      ),
                  ],
                ),
              ),
              if (showCards) const Expanded(child: CardsAcademic()),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:beam/color_schemes.g.dart';
import 'package:beam/components/academicTotal.dart';
import 'package:beam/components/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Academic extends StatefulWidget {
  const Academic({super.key});

  @override
  State<Academic> createState() => _AcademicState();
}

class _AcademicState extends State<Academic> {
  
  // _AcademicState() {
  //   dropdownValue = listnumber.first;
  // }
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: const Color.fromARGB(255, 0, 0, 0),
          backgroundColor: lightColorScheme.primary,
          shadowColor: const Color.fromARGB(0, 0, 0, 0),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: ((() {})),
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
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              color: lightColorScheme.primary,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 15),
                child: Text(
                  "Academics",
                  style: GoogleFonts.inter(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: lightColorScheme.onPrimary,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    // child: Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     Text(
                    //       "Semester : ",
                    //       style: GoogleFonts.inter(
                    //           fontSize: 18,
                    //           fontWeight: FontWeight.w600,
                    //           color: Colors.black),
                    //     ),
                    //     Container(
                    //       width: w * 0.5,
                    //       padding: const EdgeInsets.symmetric(
                    //           vertical: 0, horizontal: 16),
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(10),
                    //         color: lightColorScheme.primaryContainer,
                    //       ),
                    //       child: DropdownButton<String>(
                    //         hint: const Text("Select Semester"),
                    //         isExpanded: true,
                    //         dropdownColor: lightColorScheme.secondaryContainer,
                    //         value: dropdownValue,
                    //         alignment: AlignmentDirectional.centerStart,
                    //         icon: const Icon(Icons.arrow_downward),
                    //         elevation: 4,
                    //         style: TextStyle(
                    //           color: lightColorScheme.onSecondaryContainer,
                    //           fontSize: 18,
                    //           fontWeight: FontWeight.w500,
                    //         ),
                    //         onChanged: (String? value) {
                    //           // This is called when the user selects an item.
                    //           setState(() {
                    //             dropdownValue = value!;
                    //           });
                    //         },
                    //         items: listnumber
                    //             .map<DropdownMenuItem<String>>((String value) {
                    //           return DropdownMenuItem<String>(
                    //             value: value,
                    //             child: Text(value),
                    //           );
                    //         }).toList(),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    child: dropdownList(
                      dropdownlistValues: const <String>[
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
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: const <DataColumn>[
                        DataColumn(
                          label: Expanded(
                            child: Text(
                              'Subject Code',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Subject Name',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                        DataColumn(
                          label: Expanded(
                            child: Text(
                              'Internals',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                        ),
                      ],
                      rows: const <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('Sarah')),
                            DataCell(Text('19')),
                            DataCell(Text('Student')),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('Janine')),
                            DataCell(Text('43')),
                            DataCell(Text('Professor')),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('William')),
                            DataCell(Text('27')),
                            DataCell(Text('Associate Professor')),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: total()),
          ],
        ),
      ),
    );
  }
}

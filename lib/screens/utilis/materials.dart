import 'package:beam/components/appbar.dart';
import 'package:beam/components/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Materials extends StatefulWidget {
  const Materials({super.key});

  @override
  State<Materials> createState() => _MaterialsState();
}

class _MaterialsState extends State<Materials> {
  bool _showMaterial = false;
  void _showmaterials() {
    setState(() {
      
      _showMaterial = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const BeamAppBar(name: "Materials"),
        body: Column(
          children: [
            
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 26, right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const DropdownList(
                      nameValue: "Regulation", dropdownlistValues: ['R19']),
                  const SizedBox(height: 20),
                  const DropdownList(
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
                  const SizedBox(
                    height: 20,
                  ),
                  const DropdownList(
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
                    nameValue: "Subject",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: _showmaterials, child: const Text("Go")),
                ],
              ),
            ),
            if (_showMaterial == true)
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(71, 123, 97, 255),
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        title: Text(
                          "Unit-1  Material",
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: const Color(0XFF23262F),
                          ),
                        ),
                        trailing: const Padding(
                          padding: EdgeInsets.only(right: 10, left: 10),
                          child: Icon(
                            Icons.download,
                            color: Color(0XFF23262F),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(71, 123, 97, 255),
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          title: Text(
                            "Unit-2  Material",
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: const Color(0XFF23262F),
                            ),
                          ),
                          trailing: const Padding(
                            padding: EdgeInsets.only(right: 10, left: 10),
                            child: Icon(
                              Icons.download,
                              color: Color(0XFF23262F),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(71, 123, 97, 255),
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          title: Text(
                            "Unit-3  Material",
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: const Color(0XFF23262F),
                            ),
                          ),
                          trailing: const Padding(
                            padding: EdgeInsets.only(right: 10, left: 10),
                            child: Icon(
                              Icons.download,
                              color: Color(0XFF23262F),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(71, 123, 97, 255),
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          title: Text(
                            "Unit-4  Material",
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: const Color(0XFF23262F),
                            ),
                          ),
                          trailing: const Padding(
                            padding: EdgeInsets.only(right: 10, left: 10),
                            child: Icon(
                              Icons.download,
                              color: Color(0XFF23262F),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(71, 123, 97, 255),
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          title: Text(
                            "Unit-5  Material",
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: const Color(0XFF23262F),
                            ),
                          ),
                          trailing: const Padding(
                            padding: EdgeInsets.only(right: 10, left: 10),
                            child: Icon(
                              Icons.download,
                              color: Color(0XFF23262F),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

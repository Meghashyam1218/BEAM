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
                  DropdownList(
                      nameValue: "Regulation",
                      dropdownlistValues: const ['R19']),
                  const SizedBox(height: 20),
                  DropdownList(
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
                  const SizedBox(
                    height: 20,
                  ),
                  DropdownList(
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
                    nameValue: "Subject",
                  ),
                  const SizedBox(
                    height: 20,
                    
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 50,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer),
                              foregroundColor: MaterialStateProperty.all(
                                  Theme.of(context)
                                      .colorScheme
                                      .onSecondaryContainer),
                            ),
                            onPressed: _showmaterials,
                            child: const Text("Go")),
                      ),
                      if (_showMaterial == true)
                        SizedBox(
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Theme.of(context)
                                        .colorScheme
                                        .tertiaryContainer),
                                foregroundColor: MaterialStateProperty.all(
                                    Theme.of(context)
                                        .colorScheme
                                        .onTertiaryContainer),
                              ),
                              onPressed: _showmaterials,
                              child: const Text("Download all")),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            if (_showMaterial == true)
              Expanded(
                child: ListView(
                  children: [
                    Card(
                      color: Theme.of(context).colorScheme.tertiaryContainer,
                      margin: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      
                      child: ListTile(
                        title: Text(
                          "Unit-1  Material",
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context)
                                .colorScheme
                                .onTertiaryContainer,
                          ),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 10, left: 10),
                          child: Icon(
                            Icons.download,
                            color: Theme.of(context)
                                .colorScheme
                                .onTertiaryContainer,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                    Center(
                      child: Card(
                        color: Theme.of(context).colorScheme.tertiaryContainer,
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        
                        child: ListTile(
                          title: Text(
                            "Unit-2  Material",
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                            ),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 10, left: 10),
                            child: Icon(
                              Icons.download,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    Center(
                      child: Card(
                        color: Theme.of(context).colorScheme.tertiaryContainer,
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        child: ListTile(
                          title: Text(
                            "Unit-3  Material",
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                            ),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 10, left: 10),
                            child: Icon(
                              Icons.download,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    Center(
                      child: Card(
                        color: Theme.of(context).colorScheme.tertiaryContainer,
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        child: ListTile(
                          title: Text(
                            "Unit-4  Material",
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                            ),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 10, left: 10),
                            child: Icon(
                              Icons.download,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    Center(
                      child: Card(
                        color: Theme.of(context).colorScheme.tertiaryContainer,
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        child: ListTile(
                          title: Text(
                            "Unit-5  Material",
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                            ),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 10, left: 10),
                            child: Icon(
                              Icons.download,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
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

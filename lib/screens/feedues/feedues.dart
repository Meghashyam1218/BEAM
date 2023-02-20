import 'package:beam/components/appbar.dart';
import 'package:beam/components/dropdown.dart';
import 'package:flutter/material.dart';

class FeeDues extends StatefulWidget {
  const FeeDues({super.key});

  @override
  State<FeeDues> createState() => _FeeDuesState();
}

class _FeeDuesState extends State<FeeDues> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const BeamAppBar(name: "Fee-Dues"),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.all(10),
                child: DropdownList(
                    nameValue: "Fee type",
                    dropdownlistValues: <String>[
                      "college fee",
                      "JNTU fee",
                      "CRT Fee",
                      "Other fees"
                    ])),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

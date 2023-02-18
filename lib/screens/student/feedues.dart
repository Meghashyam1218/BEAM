import 'package:beam/components/appbar.dart';
import 'package:beam/components/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        appBar: BeamAppBar(name: "Fee-Dues"),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.all(10),
                child: dropdownList(
                    nameValue: "Fee type",
                    dropdownlistValues: const <String>[
                      "college fee",
                      "JNTU fee",
                      "CRT Fee",
                      "Other fees"
                    ])),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

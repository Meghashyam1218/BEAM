import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color_schemes.g.dart';

class dropdownList extends StatefulWidget {
  String nameValue;
  List<String> dropdownlistValues;
  dropdownList({required this.nameValue, required this.dropdownlistValues});

  @override
  State<dropdownList> createState() => _dropdownListState();
}

class _dropdownListState extends State<dropdownList> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.nameValue,
          style: GoogleFonts.inter(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        Container(
          width: w * 0.5,
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: lightColorScheme.primaryContainer,
          ),
          child: DropdownButton<String>(
            hint: Text("Select" + " " + widget.nameValue,
                overflow: TextOverflow.ellipsis),
            isExpanded: true,
            dropdownColor: lightColorScheme.secondaryContainer,
            value: dropdownValue,
            alignment: AlignmentDirectional.centerStart,
            icon: const Icon(Icons.arrow_downward),
            elevation: 4,
            style: TextStyle(
              color: lightColorScheme.onSecondaryContainer,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            onChanged: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                dropdownValue = value!;
              });
            },
            items: widget.dropdownlistValues
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

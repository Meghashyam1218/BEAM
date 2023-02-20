import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color_schemes.g.dart';

// ignore: must_be_immutable
class DropdownList extends StatefulWidget {
  final String nameValue;
  final List<String> dropdownlistValues;
  Function(String val)? onChange;
  DropdownList(
      {super.key,
      required this.nameValue,
      required this.dropdownlistValues,
      this.onChange});

  @override
  State<DropdownList> createState() => _DropdownListState();
}

class _DropdownListState extends State<DropdownList> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.nameValue,
          style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: lightColorScheme.onBackground),
        ),
        Container(
          width: w * 0.5,
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: lightColorScheme.primaryContainer,
          ),
          child: DropdownButton<String>(
            hint: Text("Select ${widget.nameValue}",
                overflow: TextOverflow.ellipsis),
            isExpanded: true,
            dropdownColor: lightColorScheme.primaryContainer,
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
              widget.onChange!(dropdownValue!);
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

import 'package:beam/color_schemes.g.dart';
import 'package:flutter/material.dart';

class ToggleBtn extends StatefulWidget {
  const ToggleBtn({super.key});

  @override
  State<ToggleBtn> createState() => _ToggleBtnState();
}

class _ToggleBtnState extends State<ToggleBtn> {
  bool? flag = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      //ToggleButton
      padding: const EdgeInsets.all(7),
      width: 250,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: lightColorScheme.primaryContainer),
      child: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
            padding: const EdgeInsets.all(2),
            alignment:
                flag == true ? const Alignment(-1, 0) : const Alignment(1, 0),
            child: Container(
              width: 125,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: lightColorScheme.primary,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    // move = 100;
                    flag = true;
                  });
                },
                style: ButtonStyle(
                    overlayColor:
                        MaterialStateProperty.all(Colors.transparent)),
                child: flag == true
                    ? Text(
                        'Teacher',
                        style: TextStyle(
                            color: lightColorScheme.onPrimary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    : Text(
                        'Teacher',
                        style: TextStyle(
                            color: lightColorScheme.onPrimaryContainer,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    flag = false;
                  });
                },
                style: ButtonStyle(
                    overlayColor:
                        MaterialStateProperty.all(Colors.transparent)),
                child: flag == false
                    ? Text(
                        'Student',
                        style: TextStyle(
                            color: lightColorScheme.onPrimary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    : Text(
                        'Student',
                        style: TextStyle(
                            color: lightColorScheme.onPrimaryContainer,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

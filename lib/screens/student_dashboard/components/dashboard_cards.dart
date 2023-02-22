import 'package:flutter/material.dart';

import 'select_card.dart';

class DashboradCards extends StatelessWidget {
  const DashboradCards({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // height: 243,
        GridView.count(
      shrinkWrap: true,
        // scrollDirection: Axis.horizontal,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        crossAxisCount: 3,
        children: List.generate(choices.length, (index) {
          return Center(
            child: SelectCard(choice: choices[index]),
          );
        }),
      
    );
  }
}

import 'package:flutter/material.dart';

import '../../../components/select_card.dart';

class DashboradCards extends StatelessWidget {
  const DashboradCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 243,
      child: GridView.count(
        // scrollDirection: Axis.horizontal,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        crossAxisCount: 3,
        children: List.generate(choices.length, (index) {
          return Center(
            child: SelectCard(choice: choices[index]),
          );
        }),
      ),
    );
  }
}

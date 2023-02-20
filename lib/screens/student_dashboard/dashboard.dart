import 'package:beam/color_schemes.g.dart';
import 'package:beam/screens/student_dashboard/components/dashboard_cards.dart';
import 'package:beam/components/appbar_dash.dart';
import 'package:flutter/material.dart';
import 'components/academic_card.dart';
import '../../../components/hello_user.dart';

class DashboardS extends StatefulWidget {
  const DashboardS({super.key});

  @override
  State<DashboardS> createState() => _DashboardSState();
}

class _DashboardSState extends State<DashboardS> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const BeamAppBarDash(),
        body:
            // scrollDirection: Axis.horizontal,

            Container(
          constraints: const BoxConstraints.expand(),
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
          color: lightColorScheme.background,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                HelloUser(),
                AcademicCard(),
                SizedBox(height: 30),
                DashboradCards()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

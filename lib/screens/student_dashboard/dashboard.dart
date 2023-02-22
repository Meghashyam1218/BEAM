import 'package:beam/components/drawer.dart';
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
  final GlobalKey _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      key: _scaffoldKey,
      child: Scaffold(
        drawer: const AppDrawer(),
        appBar: const BeamAppBarDash(),
        
        body:
            // scrollDirection: Axis.horizontal,

            Container(
          // constraints: const BoxConstraints.expand(),
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
          color: Theme.of(context).colorScheme.background,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                HelloUser(),
                AcademicCard(),
                SizedBox(height: 30),
                // Container(
                //     constraints: BoxConstraints(maxWidth: 600, maxHeight: 300),
                //     child: DashboradCards())
                DashboradCards()
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}

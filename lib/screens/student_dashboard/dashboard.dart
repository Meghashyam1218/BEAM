import 'package:beam/components/drawer.dart';
import 'package:beam/models/user.dart';
import 'package:beam/screens/student_dashboard/components/dashboard_cards.dart';
import 'package:beam/components/appbar_dash.dart';
import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'components/academic_card.dart';
import '../../../components/hello_user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardS extends ConsumerStatefulWidget {
  const DashboardS({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DashboardSState();
}

class _DashboardSState extends ConsumerState<DashboardS> {
  Map<String, dynamic> decodedToken = {};
  User initialUser = User(logId: "", name: "");
  bool isLoading = true;
  Future getToken() async {
    await Future.delayed(const Duration(seconds: 5));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    var decodedTokenFut = JwtDecoder.decode(token!);
    setState(() {
      decodedToken = decodedTokenFut;
      initialUser =
          User(logId: decodedToken["userid"], name: decodedToken["name"]);
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getToken();
    });
  }

  // final GlobalKey _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    User user = ref.watch(userProvider.notifier).state;
    print(decodedToken);
    user = initialUser;
    return SafeArea(
      child: Scaffold(
        drawer: const AppDrawer(),
        appBar: const BeamAppBarDash(),
        body: !isLoading
            ?
            // scrollDirection: Axis.horizontal,

            Container(
          // constraints: const BoxConstraints.expand(),
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
          color: Theme.of(context).colorScheme.background,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      HelloUser(
                        name: user.name,
                      ),
                      const AcademicCard(),
                      const SizedBox(height: 30),
                // Container(
                //     constraints: BoxConstraints(maxWidth: 600, maxHeight: 300),
                //     child: DashboradCards())
                      const DashboradCards()
              ],
            ),
          ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}

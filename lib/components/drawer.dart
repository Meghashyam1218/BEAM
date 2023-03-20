import 'package:beam/color_schemes.g.dart';
import 'package:beam/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  List<MaterialColor> colors = [
    Colors.yellow,
    Colors.blue,
    Colors.deepPurple,
    Colors.green,
    Colors.pink
  ];
  var ac = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.only(top: 50),
            child: Consumer(
              builder: (context, ref, child) {
                var colorSelected = ref.watch(colorProvider.notifier).state;
                return Column(
                  children: <Widget>[
                    if (GoRouter.of(context).location == "/profile")
                      ListTile(
                          leading: const Icon(Icons.home),
                          title: const Text("Home"),
                          onTap: () {
                            ref.read(loginFlagProvider.notifier).state
                                ? GoRouter.of(context)
                                    .pushReplacementNamed("dashboardT")
                                : GoRouter.of(context)
                                    .pushReplacementNamed("dashboardS");

                            // Home button action
                          }),

                    ListTile(
                        leading: const Icon(
                          Icons.person,
                          size: 30,
                        ),
                        title: Text(
                          "My Profile",
                          style: GoogleFonts.inter(fontSize: 20),
                        ),
                        onTap: () {
                          // My Pfofile button action
                          GoRouter.of(context).pushReplacementNamed("profile");
                        }),

                    ListTile(
                        leading: const Icon(
                          Icons.info,
                          size: 30,
                        ),
                        title: Text(
                          "About BEAM",
                          style: GoogleFonts.inter(fontSize: 20),
                        ),
                        onTap: () {
                          // Find peoples button action
                        }),

                    ListTile(
                      leading: ref.watch(themeModeProvider.notifier).state ==
                              ThemeMode.dark
                          ? const Icon(
                              Icons.dark_mode,
                              size: 30,
                            )
                          : const Icon(
                              Icons.light_mode,
                              size: 30,
                            ),
                      title: Text(
                        "Dark Mode",
                        style: GoogleFonts.inter(fontSize: 20),
                      ),
                      trailing: Switch(
                        value: (ref.watch(themeModeProvider) == ThemeMode.dark),
                        onChanged: (value) {
                          value
                              ? ref
                                  .read(themeModeProvider.notifier)
                                  .update((state) => ThemeMode.dark)
                              : ref
                                  .read(themeModeProvider.notifier)
                                  .update((state) => ThemeMode.light);
                        },
                      ),
                    ),
                    ListTile(
                        leading: const Icon(
                          Icons.format_paint,
                          size: 30,
                        ),
                        title: Text(
                          "App Color",
                          style: GoogleFonts.inter(fontSize: 20),
                        ),
                        trailing: ac
                            ? const Icon(
                                Icons.arrow_drop_up,
                                size: 50,
                              )
                            : const Icon(
                                Icons.arrow_drop_down,
                                size: 50,
                              ),
                        onTap: () {
                          setState(() {
                            if (ac == true) {
                              ac = false;
                            } else {
                              ac = true;
                            }
                          });
                        }),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeIn,
                      height: ac == true ? 55.0 : 0.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          colors.length,
                          (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                ref
                                    .read(colorProvider.notifier)
                                    .update((state) => colors[index]);
                                setState(() {
                                  ac = false;
                                });
                              },
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: colors[index],
                                  border: Border.all(
                                      width: 6,
                                      color:
                                          colorSelected == colors[index] && ac
                                              ? Theme.of(context)
                                                  .colorScheme
                                                  .outline
                                              : Colors.transparent),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    //add more drawer menu here
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../color_schemes.g.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FocusNode node1 = FocusNode();
  final FocusNode node2 = FocusNode();
  final textControllerLogin = TextEditingController();
  final textControllerPass = TextEditingController();
  bool flag = true;
  String loginId = "";
  String password = "";

  // double move = 0;

  @override
  Widget build(BuildContext context) {
    // bool keyboard = node1.hasFocus || node2.hasFocus;
    // print(keyboard);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        body: GestureDetector(
          onTap: (() => {
                FocusScope.of(context).requestFocus(FocusNode()),
              }),
          child: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            // color: const Color(0xff456789),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                LoginImg(flag: flag),

                Flexible(
                  child: Container(
                    width: double.infinity,
                    // height: 510,
                    padding: const EdgeInsets.all(50),
                    // constraints: BoxConstraints.expand(),
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.background,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(36),
                          topLeft: Radius.circular(36),
                        )),
                    child: Column(
                      children: [
                        toggleBtn(),
                        const SizedBox(
                          height: 20,
                        ),
                        LoginFields(
                            textControllerLogin: textControllerLogin,
                            textControllerPass: textControllerPass),
                        const SizedBox(
                          height: 10,
                        ),
                        TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(
                                  Theme.of(context)
                                      .colorScheme
                                      .primary
                                      .withOpacity(0.2))),
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onBackground),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        LoginBtn(flag: flag)
                      ],
                    ),
                  ),
                ),

                //text fields
              ],
            ), //total
          ),
        ),
      ),
    );
  }

  Container toggleBtn() {
    return Container(
      //ToggleButton
      padding: const EdgeInsets.all(7),
      width: 250,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          color: Theme.of(context).colorScheme.primaryContainer),
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
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                color: Theme.of(context).colorScheme.primary,
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
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    : Text(
                        'Teacher',
                        style: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
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
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    : Text(
                        'Student',
                        style: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
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

class LoginFields extends StatelessWidget {
  const LoginFields({
    super.key,
    required this.textControllerLogin,
    required this.textControllerPass,
  });

  final TextEditingController textControllerLogin;
  final TextEditingController textControllerPass;

  @override
  Widget build(BuildContext context) {
    return Column(
      // text fields
      children: [
        SizedBox(
          //LOGIN
          width: 300,
          height: 60,
          child: TextField(
            // focusNode: node1,
            controller: textControllerLogin,
            decoration: const InputDecoration(
                labelText: 'login-id', border: OutlineInputBorder()),
            textInputAction: TextInputAction.next,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          //PASS
          width: 300,
          height: 60,
          child: TextField(
            // focusNode: node2,
            controller: textControllerPass,
            // keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            autocorrect: false,
            enableSuggestions: false,
            decoration: const InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
            onTap: () {},

            textInputAction: TextInputAction.done,
          ),
        ),
      ],
    );
  }
}

class LoginBtn extends ConsumerWidget {
  const LoginBtn({
    super.key,
    required this.flag,
  });

  final bool flag;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 300,
      height: 50.0,
      decoration: BoxDecoration(
        // backgroundBlendMode: BlendMode.luminosity,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: Theme.of(context).colorScheme.primary,
      ),
      child: ElevatedButton(
        onPressed: () {
          // ref.read(colorProvider.notifier).update((state) => Colors.green);
          // print(ref.read(colorProvider.notifier).state);
          if (flag == true) {
            GoRouter.of(context).pushNamed("dashboardT");
          } else {
            GoRouter.of(context).pushNamed("dashboardS");
          }
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        child: Text(
          'Login',
          style: GoogleFonts.inter(
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class LoginImg extends StatelessWidget {
  LoginImg({
    super.key,
    required this.flag,
  });

  final bool flag;

  final FocusNode node1 = FocusNode();
  final FocusNode node2 = FocusNode();
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
      padding: const EdgeInsets.all(0),
      child: flag == true
          ? Image(
              image: const AssetImage('assets/login(1).png'),
              height: !node1.hasFocus ? 250 : 0,
            )
          : const Image(
              image: AssetImage('assets/login(2).png'),
              height: 250,
            ),
    );
  }
}

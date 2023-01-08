import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './student/dashboard.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FocusNode node1 = FocusNode();
  final FocusNode node2 = FocusNode();
  final textControllerLogin = TextEditingController();
  final textControllerPass = TextEditingController();
  bool flag = false;
  double _togy = 0;
  double _togx = 0;
  String loginId = "";
  String password = "";

  // double move = 0;

  @override
  Widget build(BuildContext context) {
    // bool keyboard = node1.hasFocus || node2.hasFocus;
    // print(keyboard);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xffeeeeee),
        body: GestureDetector(
          onTap: (() =>
              {
                FocusScope.of(context).requestFocus(FocusNode()),
              }),
          child: SizedBox(
            width: double.infinity,
            // height: double.maxFinite,
            // color: const Color(0xff456789),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 20,
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                  padding: const EdgeInsets.all(0),
                  child: flag == true
                      ? const Image(
                          image: AssetImage('assets/login(1).png'),
                          height: 250,
                        )
                      : const Image(
                          image: AssetImage('assets/login(2).png'),
                          height: 250,
                        ),
                ),

                Flexible(
                  child: Container(
                    width: double.infinity,
                    // height: 510,
                    padding: const EdgeInsets.all(50),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(36),
                          topLeft: Radius.circular(36),
                        )),
                    child: Column(
                      children: [
                        Container(
                          //ToggleButton
                          padding: const EdgeInsets.all(7),
                          width: 250,
                          height: 60,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              color: Color.fromARGB(255, 226, 220, 253)),
                          child: Stack(
                            children: [
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn,
                                padding: const EdgeInsets.all(2),
                                alignment: flag == true
                                    ? Alignment(-1, 0)
                                    : Alignment(1, 0),
                                child: Container(
                                  width: 125,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                    color: Color(0xff342291),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        // move = 100;
                                        _togx = 100.0;
                                        flag = true;
                                        print(flag);
                                        print(_togx);
                                      });
                                    },
                                    style: ButtonStyle(
                                        overlayColor: MaterialStateProperty.all(
                                            Colors.transparent)),
                                    child: flag == true
                                        ? const Text(
                                            'Teacher',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          )
                                        : const Text(
                                            'Teacher',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        flag = false;
                                        print(flag);
                                        _togx = 0.0;
                                        print(_togx);
                                      });
                                    },
                                    style: ButtonStyle(
                                        overlayColor: MaterialStateProperty.all(
                                            Colors.transparent)),
                                    child: flag == false
                                        ? const Text(
                                            'Student',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          )
                                        : const Text(
                                            'Student',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          // text fields
                          children: [
                            SizedBox(
                              //LOGIN
                              width: 300,
                              height: 60,
                              child: TextField(
                                // focusNode: node1,
                                controller: textControllerLogin,
                                decoration: InputDecoration(
                                    labelText: 'login-id',
                                    border: OutlineInputBorder()),
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                            SizedBox(
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
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  border: OutlineInputBorder(),
                                ),

                                textInputAction: TextInputAction.done,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(color: Colors.indigo),
                          ),
                          style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(
                                  Color.fromARGB(85, 63, 81, 181))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 300,
                          height: 50.0,
                          decoration: BoxDecoration(
                            // backgroundBlendMode: BlendMode.luminosity,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            gradient: LinearGradient(
                              colors: [Color(0xff5C45D3), Color(0xff432CBA)],
                              end: Alignment.bottomCenter,
                              begin: Alignment.topCenter,
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              if (flag == true) {
                                Navigator.pushReplacementNamed(
                                    context, '/dashboardT');
                              } else {
                                Navigator.pushReplacementNamed(
                                    context, '/dashboardS');
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent),
                            child: Text(
                              'Login',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        )
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
}

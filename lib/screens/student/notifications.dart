import 'dart:collection';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Color.fromARGB(255, 0, 0, 0),
          backgroundColor: Color(0xcff5240b5),
          shadowColor: Color.fromARGB(0, 0, 0, 0),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: ((() {})),
              child: Icon(
                Icons.account_circle_outlined,
                size: 24,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: (() {
                GoRouter.of(context).pop();
              }),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Icon(
                  Icons.home_outlined,
                  size: 24,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              color: Color(0xff5240b5),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 15),
                child: Text(
                  "Notifications",
                  style: GoogleFonts.inter(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: ListView(
                  children: [
                    for (var i = 0; i < 10; i++)
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(71, 123, 97, 255),
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            shadowColor:
                                MaterialStatePropertyAll(Colors.transparent),
                            overlayColor:
                                MaterialStatePropertyAll(Colors.transparent),
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(0, 123, 97, 255)),
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "JNTUK B.Tech 4-1 Sem (R20) Regular Question Papers Aug/Sept 2021",
                                style: GoogleFonts.manrope(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff23262f)),
                              ),
                              Text(
                                "02 April, 2021",
                                style: GoogleFonts.manrope(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff708099)),
                              )
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
       
      ),
    );
  }
}

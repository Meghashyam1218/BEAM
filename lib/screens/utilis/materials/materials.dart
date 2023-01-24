import 'package:flutter/material.dart';

class Materials extends StatefulWidget {
  const Materials({super.key});

  @override
  State<Materials> createState() => _MaterialsState();
}

class _MaterialsState extends State<Materials> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Color.fromARGB(255, 0, 0, 0),
          backgroundColor: Color.fromARGB(0, 0, 0, 0),
          shadowColor: Color.fromARGB(0, 0, 0, 0),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: ((() {})),
              child: Icon(
                Icons.account_circle_outlined,
                size: 24,
                color: Color.fromARGB(255, 62, 34, 201),
              ),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: (() {
                Navigator.popAndPushNamed(context, '/');
              }),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Icon(
                  Icons.home_outlined,
                  size: 24,
                  color: Color.fromARGB(255, 62, 34, 201),
                ),
              ),
            )
          ],
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, '/');
            },
            child: const Text("materials"),
          ),
        ),
      ),
    );
  }
}

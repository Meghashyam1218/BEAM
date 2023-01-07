import 'package:flutter/material.dart';

class DashboardT extends StatefulWidget {
  const DashboardT({super.key});

  @override
  State<DashboardT> createState() => _DashboardTState();
}

class _DashboardTState extends State<DashboardT> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, '/');
            },
            child: const Text("Teacher"),
          ),
        ),
      ),
    );
  }
}

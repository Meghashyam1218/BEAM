import 'package:flutter/material.dart';

class DashboardS extends StatefulWidget {
  const DashboardS({super.key});

  @override
  State<DashboardS> createState() => _DashboardSState();
}

class _DashboardSState extends State<DashboardS> {
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
            child: const Text("student"),
          ),
        ),
      ),
    );
  }
}

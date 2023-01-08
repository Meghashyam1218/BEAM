import 'package:flutter/material.dart';

class FeeDues extends StatefulWidget {
  const FeeDues({super.key});

  @override
  State<FeeDues> createState() => _FeeDuesState();
}

class _FeeDuesState extends State<FeeDues> {
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
            child: const Text("fee dues"),
          ),
        ),
      ),
    );
  }
}

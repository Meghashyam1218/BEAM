import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeeDues extends StatefulWidget {
  const FeeDues({super.key});

  @override
  State<FeeDues> createState() => _FeeDuesState();
}

class _FeeDuesState extends State<FeeDues> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            child: const Text("fee dues"),
          ),
        ),
        
      ),
    );
  }
}

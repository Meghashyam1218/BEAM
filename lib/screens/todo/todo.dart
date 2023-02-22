import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../components/drawer.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: AppDrawer(),
        body: Center(
          child: TextButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            child: const Text("todo"),
          ),
        ),
        
      ),
    );
  }
}

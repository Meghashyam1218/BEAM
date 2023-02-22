import 'package:beam/components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:beam/components/appbar.dart';
import 'components/create.dart';

class ToDo extends StatelessWidget {
  const ToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return ToDoScreen();
  }
}

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({super.key});

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  String buttonName = ("Click Here");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BeamAppBar(name: "To-Do's"),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  setState(
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const createPage(),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

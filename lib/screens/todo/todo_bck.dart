import 'package:beam/components/drawer.dart';
import 'package:beam/models/todo/todo_model.dart';
import 'package:beam/screens/todo/components/task.dart';
import 'package:flutter/material.dart';
import 'package:beam/components/appbar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'components/create.dart';

class ToDo extends StatelessWidget {
  const ToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return const ToDoScreen();
  }
}

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({super.key});

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Consumer(
      builder: (context, ref, child) {
        final todolist = ref.watch(todotasksProvider.notifier).state;
        final lenght =
            ref.watch(todotasksProvider.select((value) => value.length));
        print(todolist);
        bool listEmpty = todolist.isEmpty;
        return Scaffold(
          appBar: const BeamAppBar(name: "To-Do's"),
          drawer: const AppDrawer(),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () async {
              final todoTask = await openDialog();
              if (todoTask == null) {
                return;
              } else {
                todolist.add(todoTask);
              }
            },
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: !listEmpty
                  ? ListView.builder(
                      itemCount: ref.watch(
                          todotasksProvider.select((value) => value.length)),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            todolist.removeAt(index);
                          },
                          child: ToDoTask(task: todolist[index]),
                        );
                      },
                    )
                  : SizedBox(
                      height: 0,
                    ),
            ),
          ),
        );
      },
    ));
  }

  Future<ToDoData?> openDialog() => showDialog<ToDoData>(
      context: context, builder: (context) => const CreatePage());
}

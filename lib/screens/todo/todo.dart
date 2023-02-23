import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../components/appbar.dart';
import '../../components/drawer.dart';
import '../../models/todo/todo_model.dart';
import 'components/create.dart';
import 'components/task.dart';

class ToDo extends ConsumerStatefulWidget {
  const ToDo({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ToDoState();
}

class _ToDoState extends ConsumerState<ToDo> {

  @override
  Widget build(BuildContext context) {
    final todolist = ref.watch(todotasksProvider.notifier).state;
    bool listEmpty = todolist.isEmpty;
    return SafeArea(
      child: Scaffold(
        appBar: const BeamAppBar(name: "To-Do's"),
        drawer: const AppDrawer(),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () async {
            final todoTask = await openDialog();
            if (todoTask == null) {
              return;
            } else {
              setState(() {
                todolist.add(todoTask);
              });
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
                          setState(() {
                            todolist.removeAt(index);
                          });
                        },
                        child: ToDoTask(task: todolist[index]),
                      );
                    },
                  )
                : const SizedBox(
                    height: 0,
                  ),
          ),
        ),
      ),
    );
  }

  Future<ToDoData?> openDialog() => showDialog<ToDoData>(
      context: context, builder: (context) => const CreatePage());
}

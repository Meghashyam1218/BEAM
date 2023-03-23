import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import '../../components/appbar.dart';
import '../../components/drawer.dart';
import '../../models/todo/todo_model.dart';
import 'components/create.dart';
import 'components/task.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
    return Scaffold(
      appBar: const BeamAppBar(name: "To-Do's"),
      drawer: const AppDrawer(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          getData();
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
                : Column(
                    children: [
                      SvgPicture.asset(
                        "assets/todo.svg",
                        colorFilter: ColorFilter.mode(
                            Theme.of(context)
                                .colorScheme
                                .tertiaryContainer
                                .withOpacity(0.5),
                            BlendMode.srcATop),
                        placeholderBuilder: (context) {
                          return const CircularProgressIndicator();
                        },
                      ),
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'You have no Tasks added \n',
                            style: TextStyle(
                                fontSize: 20,
                                color:
                                    Theme.of(context).colorScheme.onBackground),
                            children: <TextSpan>[
                              const TextSpan(text: ' Click on the  '),
                              TextSpan(
                                  text: '+',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 30,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground)),
                              const TextSpan(text: '  to add new Task'),
                            ],
                          ))
                    ],
                  )),
      ),
    );
  }

  void getData() async {
    var res = await http.get(Uri.parse("https://beam-zeta-nine.vercel.app/"));
    debugPrint(res.toString());
  }

  Future<ToDoData?> openDialog() => showDialog<ToDoData>(
      context: context, builder: (context) => const CreatePage());
}

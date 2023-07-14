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
  // List<ToDoData> todolist = [];
  Future<List<ToDoData>> todolist = getData();
  List<ToDoData> tasks = [];

  // List<ToDoData> todolist = [];
  // @override
  // void initState() {
  //   super.initState();
  //   asyncMethod();
  // }

  // void asyncMethod() async {
  //   await getData().then((value) {
  //     setState(() {
  //       todolist.addAll(value);
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // var todolistpro = ref.watch(todotasksProvider.notifier).state;
    // todolist.then((value) {
    //   setState(() {
    //     todolistpro.addAll(value);
    //   });
    // });
    // todolistpro.addAll(todolist);
    // bool listEmpty = todolistpro.isEmpty;
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
            Map r = todoTask.toJson();
            print(r);
            final postres = await postData(r);
            print(postres);
            setState(() {
              tasks.add(todoTask);
            });
          }
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          // child:
          //     !listEmpty ? listOfTasks(todolistpro) : placeholderEmpty(context),
          child: FutureBuilder(
            future: todolist,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              } else {
                tasks = snapshot.data!;

                if (tasks.isNotEmpty) {
                  return listOfTasks(tasks);
                } else {
                  return placeholderEmpty(context);
                }
              }
            },
          ),
        ),
      ),
    );
  }

  ListView listOfTasks(List<ToDoData> x) {
    return ListView.builder(
      // itemCount: ref
      //     .watch(todotasksProvider.select((value) => value.length)),
      itemCount: x.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              x.removeAt(index);
            });
          },
          child: ToDoTask(task: x[index]),
        );
      },
    );
  }

  Column placeholderEmpty(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          "assets/todo.svg",
          colorFilter: ColorFilter.mode(
              Theme.of(context).colorScheme.tertiaryContainer.withOpacity(0.5),
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
                color: Theme.of(context).colorScheme.onBackground),
            children: <TextSpan>[
              const TextSpan(text: ' Click on the  '),
              TextSpan(
                  text: '+',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                      color: Theme.of(context).colorScheme.onBackground)),
              const TextSpan(text: '  to add new Task'),
            ],
          ),
        ),
      ],
    );
  }

  static Future<List<ToDoData>> getData() async {
    var res =
        await http.get(Uri.parse("https://beam-zeta-nine.vercel.app/gettodo"));
    var jsondata = json.decode(res.body);
    // var todotaskmon = ToDoData.fromJson(jsondata);

    return jsondata.map<ToDoData>(ToDoData.fromJson).toList();

    // return ToDoData();
  } 

  static postData(x) async {
    // Map<String, String> requestHeaders =
    var res = await http.post(
      Uri.parse("https://beam-zeta-nine.vercel.app/posttodo"),
      headers: {'Content-type': 'application/json'},
      body: jsonEncode(x),
    );

    return res.body;
  }

  Future<ToDoData?> openDialog() => showDialog<ToDoData>(
      context: context, builder: (context) => const CreatePage());
}

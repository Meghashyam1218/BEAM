import 'package:beam/models/todo/todo_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  bool _validate = false;
  @override
  Widget build(BuildContext context) {
    var todoTask = ToDoData();
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            setState(
              () {
                Navigator.of(context).pop();
              },
            );
          },
          child: const Icon(Icons.close),
        ),
        title: const Text(
          "Create",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Consumer(
                builder: (context, ref, child) {
                  return GestureDetector(
                    child: Text(
                      "Save",
                      style: TextStyle(
                          color: Colors.red[700],
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    onTap: () {
                      var title = titleController.text;
                      var description = descriptionController.text;
                      var date = dateController.text;
                      var endtime = timeController.text;
                      todoTask = ToDoData(
                          title: title,
                          description: description,
                          endtime: endtime,
                          date: date);
                      if (title != "") {
                        Navigator.of(context).pop(todoTask);
                      } else {
                        setState(() {
                          titleController.text.isEmpty
                              ? _validate = true
                              : _validate = false;
                        });
                      }
                    },
                  );
                },
              )),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            SizedBox(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Center(
                  child: SizedBox(
                    width: double.infinity,
                    child: TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: "Title ",
                        hintText: "Complete My Homewrok",
                        errorText: _validate ? 'Value Can\'t Be Empty' : null,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Center(
                  child: SizedBox(
                    width: double.infinity,
                    child: TextField(
                      controller: descriptionController,
                      keyboardType: TextInputType.multiline,
                      minLines: 2,
                      maxLines: 5,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Description",
                          hintText: "Description about the task ..."),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: SizedBox(
                  width: double.infinity,
                  child: TextField(
                    controller:
                        dateController, //editing controller of this TextField
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.calendar_today), //icon of text field
                        labelText: "Date" //label text of field
                        ),
                    readOnly: true, // when true user cannot edit text
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(), //get today's date
                          firstDate: DateTime(
                              2000), //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2101));

                      if (pickedDate != null) {
                        //get the picked date in the format => 2022-07-04 00:00:00.000
                        String formattedDate = DateFormat('yyyy-MM-dd').format(
                            pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
                        //formatted date output using intl package =>  2022-07-04
                        //You can format date as per your need

                        dateController.text =
                            formattedDate; //set foratted date to TextField value.
                      } else {}
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: SizedBox(
                  width: double.infinity,
                  child: TextField(
                    controller:
                        timeController, //editing controller of this TextField
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.calendar_today), //icon of text field
                        labelText: "Date" //label text of field
                        ),
                    readOnly: true, // when true user cannot edit text
                    onTap: () async {
                      TimeOfDay? pickedTime = await showTimePicker(
                          context: context, initialTime: TimeOfDay.now());

                      if (pickedTime != null) {
                        //get the picked date in the format => 2022-07-04 00:00:00.000
                        // format date in required form here we use yyyy-MM-dd that means time is removed
                        //formatted date output using intl package =>  2022-07-04
                        //You can format date as per your need

                        timeController.text = pickedTime.format(
                            context); //set foratted date to TextField value.
                      } else {}
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

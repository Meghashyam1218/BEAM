import 'dart:ffi';
import 'package:intl/intl.dart';
import 'package:beam/main.dart';
import 'package:beam/screens/login/login.dart';
import 'package:beam/screens/todo/todo.dart';
import 'package:flutter/material.dart';
import './create.dart';
import 'package:google_fonts/google_fonts.dart';

class createPage extends StatefulWidget {
  const createPage({super.key});

  @override
  State<createPage> createState() => _createPageState();
}

class _createPageState extends State<createPage> {
  TextEditingController dateController = TextEditingController();

  @override
  void initState() {
    dateController.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            setState(
              () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ToDoScreen(),
                  ),
                );
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
            child: GestureDetector(
              child: Text(
                "Save",
                style: TextStyle(
                    color: Colors.red[700],
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                setState(
                  () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ToDoScreen(),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Center(
                child: SizedBox(
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Heading",
                        hintText: "Heading"),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Center(
                child: SizedBox(
                  width: double.infinity,
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    minLines: 2,
                    maxLines: 5,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Discription",
                        hintText: "Discription"),
                  ),
                ),
              ),
            ),
          ),
<<<<<<< HEAD
          SizedBox(
=======
         SizedBox(
>>>>>>> 452936bec126e4505d3dbadf3e0cb214e57445f0
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
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
<<<<<<< HEAD

=======
              
>>>>>>> 452936bec126e4505d3dbadf3e0cb214e57445f0
                    if (pickedDate != null) {
                      print(
                          pickedDate); //get the picked date in the format => 2022-07-04 00:00:00.000
                      String formattedDate = DateFormat('yyyy-MM-dd').format(
                          pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
                      print(
                          formattedDate); //formatted date output using intl package =>  2022-07-04
                      //You can format date as per your need
<<<<<<< HEAD

=======
              
>>>>>>> 452936bec126e4505d3dbadf3e0cb214e57445f0
                      setState(() {
                        dateController.text =
                            formattedDate; //set foratted date to TextField value.
                      });
                    } else {
                      print("Date is not selected");
                    }
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

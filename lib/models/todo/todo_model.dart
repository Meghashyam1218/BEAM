import 'package:beam/screens/todo/todo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final todotasksProvider = StateProvider<List<ToDoData>>((ref) {
  List<ToDoData> todotasks = [];
  return todotasks;
});

class ToDoData {
  final String? title;
  final String? description;
  final String? date;
  final String? endtime;

  ToDoData(this.title, this.description, this.endtime, this.date);
}

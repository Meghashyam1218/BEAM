import 'package:flutter_riverpod/flutter_riverpod.dart';

final todotasksProvider = StateProvider<List<ToDoData>>((ref) {
  List<ToDoData> todotasks = [];
  return todotasks;
});

class ToDoData {
  // String? sId;
  String? title;
  String? description;
  String? date;
  String? endtime;

  ToDoData({this.title, this.description, this.date, this.endtime});

  static ToDoData fromJson(json) => ToDoData(
        // sId: json['_id'],
        title: json['title'],
        description: json['description'],
        date: json['date'],
        endtime: json['time'],
      );

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   // data['_id'] = this.sId;
  //   data['title'] = this.title;
  //   data['description'] = this.description;
  //   data['date'] = this.date;
  //   data['time'] = this.endtime;
  //   return data;
  // }
  Map<String, String?> toJson() => {
        'title': title,
        'description': description,
        'date': date,
        'time': endtime,
      };
}

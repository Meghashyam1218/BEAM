import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProvider = StateProvider<User>((ref) {
  return User(logId: "", name: "");
});

class User {
  String logId;
  String name;

  User({required this.logId, required this.name});
  static User fromJson(json) => User(
      // sId: json['_id'],
      logId: json['logId'],
      name: json['name']);

  Map<String, String?> toJson() => {
        'logId': logId,
        'name': name,
      };
}

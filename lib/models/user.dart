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

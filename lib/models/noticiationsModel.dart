class NotificationsGv {
  List<String>? notificationTitles;
  List<String>? notificationLinks;
  List<String>? notificationDates;

  NotificationsGv(
      {this.notificationTitles,
      this.notificationLinks,
      this.notificationDates});

  NotificationsGv.fromJson(Map<String, dynamic> json) {
    notificationTitles = json['notificationTitles'].cast<String>();
    notificationLinks = json['notificationLinks'].cast<String>();
    notificationDates = json['notificationDates'].cast<String>();
  }
  // static NotificationsGv fromJson(json) => NotificationsGv(
  //       // sId: json['_id'],
  //       notificationTitles: json['notificationTitles'],
  //       notificationDates: json['notificationDates'],
  //       notificationLinks: json['notificationLinks'],
  //     );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['notificationTitles'] = this.notificationTitles;
    data['notificationLinks'] = this.notificationLinks;
    data['notificationDates'] = this.notificationDates;
    return data;
  }
}

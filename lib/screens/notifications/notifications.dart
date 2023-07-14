import 'package:beam/components/appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../components/drawer.dart';
import '../../models/noticiationsModel.dart';
import 'package:url_launcher/url_launcher.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  Future<NotificationsGv> notificationsFuture = getData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          NotificationsGv notifications = await getData();
          print(notifications.notificationDates![1]);
        },
      ),
      drawer: const AppDrawer(),
      appBar: const BeamAppBar(name: "Notifications"),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: FutureBuilder(
                future: notificationsFuture,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    NotificationsGv notifications = snapshot.data!;

                    if (notifications.notificationDates!.isNotEmpty) {
                      return listOfNotifications(notifications);
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Future<NotificationsGv> getData() async {
    var res = await http.get(
        Uri.parse("https://beam-zeta-nine.vercel.app/getnotificationsgv/1"));
    var jsondata = json.decode(res.body);
    // var todotaskmon = ToDoData.fromJson(jsondata);

    return NotificationsGv.fromJson(jsondata);

    // return ToDoData();
  }

  ListView listOfNotifications(NotificationsGv x) {
    return ListView.builder(
      // itemCount: ref
      //     .watch(todotasksProvider.select((value) => value.length)),
      itemCount: x.notificationDates!.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {},
          child: Notification(
            title: x.notificationTitles![index],
            date: x.notificationDates![index],
            link: x.notificationLinks![index],
          ),
        );
      },
    );
  }
}

class Notification extends StatelessWidget {
  final String title;
  final String date;
  final String link;
  const Notification({
    required this.title,
    required this.date,
    required this.link,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.secondaryContainer,
      ),
      child: ElevatedButton(
        onPressed: () async {
          var url = link;
          print(url);
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        },
        style: const ButtonStyle(
          shadowColor: MaterialStatePropertyAll(Colors.transparent),
          overlayColor: MaterialStatePropertyAll(Colors.transparent),
          surfaceTintColor: MaterialStatePropertyAll(Colors.transparent),
          backgroundColor:
              MaterialStatePropertyAll(Color.fromARGB(0, 123, 97, 255)),
          padding: MaterialStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.manrope(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.onSecondaryContainer),
            ),
            const SizedBox(height: 5),
            Text(
              date,
              style: GoogleFonts.manrope(
                  fontSize: 12,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.outline),
            )
          ],
        ),
      ),
    );
  }
}

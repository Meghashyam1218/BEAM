import 'package:beam/components/appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventsClg extends StatefulWidget {
  const EventsClg({super.key});

  @override
  State<EventsClg> createState() => _EventsClgState();
}

class _EventsClgState extends State<EventsClg> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const BeamAppBar(name: "Events"),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: ListView(
                  children: [
                    for (var i = 0; i < 10; i++) const Event(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Event extends StatelessWidget {
  const Event({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(71, 123, 97, 255),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(
          shadowColor: MaterialStatePropertyAll(Colors.transparent),
          overlayColor: MaterialStatePropertyAll(Colors.transparent),
          backgroundColor: MaterialStatePropertyAll(
            Color.fromARGB(0, 123, 97, 255),
          ),
          surfaceTintColor: MaterialStatePropertyAll(Colors.transparent),
          padding: MaterialStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const EventImg(),
            Text(
              "BITS Cultural Fest",
              style: GoogleFonts.manrope(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff23262f)),
            ),
            Text(
              "02 April, 2023",
              style: GoogleFonts.manrope(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff708099)),
            )
          ],
        ),
      ),
    );
  }
}

class EventImg extends StatelessWidget {
  const EventImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Image(
        image: AssetImage('assets/login(1).png'),
        height: 250,
      ),
    );
  }
}

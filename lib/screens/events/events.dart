import 'package:beam/components/appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/drawer.dart';


class EventsClg extends StatefulWidget {
  const EventsClg({super.key});

  @override
  State<EventsClg> createState() => _EventsClgState();
}

class _EventsClgState extends State<EventsClg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const AppDrawer(),
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
      
    );
  }
}

class Event extends StatelessWidget {
  const Event({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Card(
        clipBehavior: Clip.hardEdge,
        color: Theme.of(context).colorScheme.secondaryContainer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const EventImg(),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "BITS Cultural Fest",
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        letterSpacing: 0.4,
                        fontWeight: FontWeight.w700,
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "02 April, 2023",
                    style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.outline),
                  )
                ],
              ),
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
    return const Image(
      fit: BoxFit.contain,
      image: AssetImage('assets/event.jpg'),
      
      
    );
  }
}

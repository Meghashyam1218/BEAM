import 'package:flutter/material.dart';
import 'package:beam/routes.dart';

void main() {
  
  runApp(const Beam());
}

class Beam extends StatefulWidget {
  const Beam({super.key});

  @override
  State<Beam> createState() => _BeamState();
}

class _BeamState extends State<Beam> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goroutes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      title: 'Flutter Demo',
    );
  }
}

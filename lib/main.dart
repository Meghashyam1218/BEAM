import 'package:flutter/material.dart';
import 'package:beam/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'color_schemes.g.dart';

void main() {
  runApp(const ProviderScope(child: Beam()));
}

class Beam extends ConsumerWidget {
  const Beam({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = ref.watch(colorProvider);
    final themeMode = ref.watch(themeModeProvider);
    return Consumer(
      builder: (context, watch, _) => MaterialApp.router(
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: color),
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: color, brightness: Brightness.dark),
        ),
        routeInformationParser: goroutes.routeInformationParser,
        routerDelegate: goroutes.routerDelegate,
        debugShowCheckedModeBanner: false,
        title: 'BEAM',
        themeMode: themeMode,
      ),
    );
  }
}

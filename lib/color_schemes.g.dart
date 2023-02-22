import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final colorProvider = StateProvider<MaterialColor>((ref) {
  return Colors.yellow;
});
final themeModeProvider = StateProvider<ThemeMode>((ref) {
  return ThemeMode.light;
});
// var color = Colors.orange;
// var brightnessMode = SchedulerBinding.instance.window.platformBrightness;
// bool isDarkMode = brightnessMode == Brightness.dark;
// ColorScheme lightColorScheme =
//     ColorScheme.fromSeed(seedColor: color, brightness: Brightness.light);
// ColorScheme darkColorScheme =
//     ColorScheme.fromSeed(seedColor: color, brightness: Brightness.dark);

// // THEME PROVIDERS
// final theme = Provider((ref) => _theme);
// final darkTheme = Provider((ref) => _darkTheme);
// // THEMES
// // light
// final _theme = ThemeData(useMaterial3: true, colorScheme: lightColorScheme);

// //dark
// final _darkTheme = ThemeData(useMaterial3: true, colorScheme: darkColorScheme);

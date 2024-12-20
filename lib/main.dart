import 'package:tarea2_2/screens/welcomeScreen.dart';
import 'package:tarea2_2/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tarea2.2',
      theme: darkMode,
      home: const WelcomeScreen(),
    );
  }
}

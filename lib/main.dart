import 'package:flutter/material.dart';
import 'package:wisatakuliner/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Kuliner Bogor',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}


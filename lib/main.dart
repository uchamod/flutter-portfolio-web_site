import 'package:flutter/material.dart';
import 'package:portflio/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chamod Udara",
      home: HomePage(),
    );
  }
}

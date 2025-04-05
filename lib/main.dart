import 'package:flutter/material.dart';
import 'package:portflio/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chamod Udara",
      theme: ThemeData.dark(useMaterial3: true),
      home: const HomePage(),
    );
  }
}

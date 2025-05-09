import 'package:flutter/material.dart';
import 'package:iamsazid/views/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sazid Portfolio",
      theme: ThemeData.dark(),
      home: LandingPage(),
    );
  }
}

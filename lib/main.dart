import 'package:flutter/material.dart';
import 'package:profl/home.dart';
import 'package:profl/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Egor Tarasov',
      debugShowCheckedModeBanner: false,
      theme: light,
      home: const HomePage()
    );
  }
}
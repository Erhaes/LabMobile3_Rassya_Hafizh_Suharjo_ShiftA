import 'package:flutter/material.dart';
import 'package:tugas3mobile/login_page.dart';
import 'package:tugas3mobile/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Menu',
      theme: ThemeData(
        
      ),
      home: const LoginPage(),
    );
  }
}


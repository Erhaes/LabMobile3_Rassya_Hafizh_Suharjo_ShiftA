import 'package:flutter/material.dart';
import 'package:tugas3mobile/sidemenu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
        backgroundColor: Color.fromARGB(255, 37, 226, 176),
      ),
      body: const Center(
        child: Text('Ini adalah halaman about'),
      ),
      drawer: const SideMenu(),
    );
  }
}
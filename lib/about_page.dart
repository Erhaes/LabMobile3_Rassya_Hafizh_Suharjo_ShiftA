import 'package:flutter/material.dart';
import 'package:tugas3mobile/sidemenu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        backgroundColor: Color.fromRGBO(193, 225, 193, 1),
      ),
      body: Container(
        color: Color.fromRGBO(250, 248, 246, 1),
        child: const Center(
        child: Text('Ini adalah halaman about'),
      ),
      ),
      drawer: const SideMenu(),
    );
  }
}
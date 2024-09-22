import 'package:flutter/material.dart';
import 'package:tugas3mobile/about_page.dart';
import 'package:tugas3mobile/home_page.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context){
    return Drawer(
      backgroundColor: Color.fromARGB(255, 37, 226, 176),
      child: ListView(
        children: [
          const DrawerHeader(
            child: Icon(
              Icons.person,
              size: 100,
            ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                //navigasi ke halaman home
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                    ),
                  );
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                //navigasi ke halaman settings
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                    ),
                  );
              },
            ),
        ],
      ),
    );
  }
}
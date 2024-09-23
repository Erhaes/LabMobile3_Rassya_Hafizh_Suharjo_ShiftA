import 'package:flutter/material.dart';
import 'package:tugas3mobile/sidemenu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var namauser;

  void _loadUsername() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    namauser = prefs.getString('username');
    //set username on UI
    setState(() {});
  }

  @override
  Widget build(BuildContext context){
    _loadUsername();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        // backgroundColor: Color.fromARGB(255, 37, 226, 176),
        backgroundColor: Color.fromRGBO(193, 225, 193, 1),
      ),
      body: Container(
        color: Color.fromRGBO(250, 248, 246, 1),
        child: Center(
        child: Text(
          'Selamat datang $namauser',
          style: TextStyle(
            fontSize: 26,
          ),
        ),
        ),
      ),
      drawer: const SideMenu(),
    );
  }
}
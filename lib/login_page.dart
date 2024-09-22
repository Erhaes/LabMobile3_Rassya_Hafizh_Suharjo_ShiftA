import 'package:flutter/material.dart';
import 'package:tugas3mobile/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  //ignore: library_private_types_in_pulic_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  //ignore: prefer_typing_unintialized_variables
  var namauser;

  void _saveUsername() async {
    //inisialisasi shareed preference
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //simpan username ke local storage
    prefs.setString('username', _usernameController.text);
  }

  _showInput(namacontroller, placeholder, isPassword){
    return TextField(
      controller: namacontroller,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: placeholder,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 37, 226, 176),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        // fillColor: Color.fromARGB(255, 37, 226, 176),  
      ),
    );
  }

  _showDialog(pesan, alamat){
    return showDialog(context: context,
     builder: (context){
      return AlertDialog(
        title: Text(pesan),
        backgroundColor: Color.fromARGB(255, 37, 226, 176),
        actions: [
          TextButton(
            child: const Text('Ok'),
            onPressed: (){
            Navigator.push(
              context,
             MaterialPageRoute(builder: (context) => alamat,
             )
             );
          },
          ),
        ],
      );
     });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: const Color.fromARGB(255, 37, 226, 176),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          // color: const Color.fromARGB(255, 148, 232, 131),
          // color: const Color.fromARGB(255, 9, 231, 224),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _showInput(_usernameController, 'Masukkan Username', false),
            const SizedBox(height: 15,),
            _showInput(_passwordController, 'Masukkan Password', true),
            const SizedBox(height: 15,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 37, 226, 176),
              ),
              child: const Text('Login'), 
              onPressed: () {
                if (_usernameController.text == 'admin' && _passwordController.text == 'admin') {
                  //save username
                  _saveUsername();
                  //show Alert
                  _showDialog('Anda berhasil login', const HomePage());
                }else{
                  //show alert
                  _showDialog('Usename dan password salah', const LoginPage());
                }
              }, 
              ),
          ],
        ),
      ),
    );
  }
}
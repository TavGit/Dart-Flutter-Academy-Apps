import 'package:myacademy_apps/utils/resetpassword_pages.dart';
import './signup_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // buat variable dan teks controller
  final email = TextEditingController();
  final password = TextEditingController();

  // buat fungsi signIn
  void signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
    } catch (pesan) {
      Get.snackbar(
        'Error','Email belum terdaftar, Yukk SignUp dulu',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Login")],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: email,
              decoration: InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: password,
              decoration: InputDecoration(labelText: "Password"),
            ),
            SizedBox(height: 10,),
            TextButton(
              onPressed: (() => Get.to(ResetpasswordPages())), 
              child: Padding(
                padding: EdgeInsets.only(left: 230.0),
                child: Text('Lupa Password?'),
              ),
            ),
            ElevatedButton(onPressed: (() => signIn()), child: Text('Login')),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: (() => Get.to(SignupPage())),
              child: Text('SignUp'),
            ),
          ],
        ),
      ),
    );
  }
}
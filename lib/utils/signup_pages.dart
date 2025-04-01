import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:myacademy_apps/services/auth_gate.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmpassword = TextEditingController();

  // buat fungsi signUp
  void signUp() async {
    // Validasi konfirmasi password
    if (password.text != confirmpassword.text) {
      Get.snackbar(
        'Error',
        'Password dan konfirmasi password tidak sama',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    // Validasi panjang password
    if (password.text.length < 6) {
      Get.snackbar(
        'Error',
        'Password harus lebih dari 6 karakter',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      Get.offAll( AuthGate());
    } on FirebaseAuthException catch (e) {
      // Handle error email sudah terdaftar
      if (e.code == 'email-already-in-use') {
        Get.snackbar(
          'Error',
          'Email sudah ada',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      } else {
        // Handle error lainnya
        Get.snackbar(
          'Error',
          e.message.toString(),
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      // Handle general error
      Get.snackbar(
        'Error',
        e.toString(),
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
        title:
          Text("SignUp"),
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
            TextField(
              controller: confirmpassword,
              decoration: InputDecoration(labelText: "Konfirmasi Password"),
            ),
            ElevatedButton(onPressed: (() => signUp()), child: Text('SignUp')),
          ],
        ),
      ),
    );
  }
}
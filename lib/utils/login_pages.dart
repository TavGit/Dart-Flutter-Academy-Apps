import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import './signup_pages.dart';
import 'package:myacademy_apps/utils/resetpassword_pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // buat variable dan teks controller
  final email = TextEditingController();
  final password = TextEditingController();

  bool _isObscure = true;

  // buat fungsi signIn
  void signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
    } catch (pesan) {
      Get.snackbar(
        'Error',
        'Email belum terdaftar, Yukk SignUp dulu',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(2.0),
                child: AspectRatio(aspectRatio: 1, child: Image.asset('assets/Images/Mobile login.gif'),)
                ),
                SizedBox(height: 3,),
                SizedBox(
                    width: double.infinity,
                    child: 
                    Text(
                      'Login', 
                      style: 
                      TextStyle(
                        color: Colors.black ,
                        fontSize: 25, 
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0, bottom: 10.0,),
                  child: Text(
                    'Welcome back!, Sudah siap belajar?, login sekarang!.',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(style: BorderStyle.solid, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black, width: 2)
                    ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintText: 'Masukkan email',
                      prefixIcon: Icon(Icons.email),
                      prefixIconColor: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: password,
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(style: BorderStyle.solid, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black, width: 2)
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'Masukkan password',
                    prefixIcon: Icon(Icons.lock),
                    prefixIconColor: Colors.black,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off
                      ),
                    ),
                    suffixIconColor: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: (() => Get.to(ResetpasswordPages())),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Lupa Password?',
                      style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () => signIn(),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(350, 50),
                    maximumSize: Size(350, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    backgroundColor: Colors.black,
                  ),
                  icon: Icon(Icons.login, color: Colors.white, size: 20),
                  label: Text(
                    'Login',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                SizedBox(height: 30),
                RichText(
                  text: TextSpan(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  children: [
                    TextSpan(text: 'Pengguna Baru?'),
                    TextSpan(text: ' '),
                    TextSpan(
                      text: 'Buat Akun',
                      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold,),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        Get.to(SignupPage());
                        },
                      ),
                    ]
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

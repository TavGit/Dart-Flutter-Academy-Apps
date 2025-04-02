import 'package:animated_button/animated_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:myacademy_apps/services/auth_gate.dart';
import 'package:myacademy_apps/utils/login_pages.dart';

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

  bool _passwordObscure = true;
  bool _confrimpasswordObscure = true;

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
      Get.offAll(AuthGate());
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: AspectRatio(
                    aspectRatio: 1.2,
                    child: Image.asset('assets/Images/Sign up.gif'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 240.0, bottom: 2.0),
                  child: Text(
                    'SignUp',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0, bottom: 10.0),
                  child: Text(
                    'Hai!, Buat Akun anda, dan langsung belajar sekarang.',
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
                        borderSide: BorderSide(
                          style: BorderStyle.solid,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.black, width: 2),
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
                  obscureText: _passwordObscure,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'Masukkan password',
                    prefixIcon: Icon(Icons.lock),
                    prefixIconColor: Colors.black,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _passwordObscure = !_passwordObscure;
                        });
                      },
                      icon: Icon(
                        _passwordObscure
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                    suffixIconColor: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: confirmpassword,
                  obscureText: _confrimpasswordObscure,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'Masukkan konfirmasi password',
                    prefixIcon: Icon(Icons.lock),
                    prefixIconColor: Colors.black,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _confrimpasswordObscure = !_confrimpasswordObscure;
                        });
                      },
                      icon: Icon(
                        _confrimpasswordObscure
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                    suffixIconColor: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Dengan masuk Anda menyetujui kebijakan privasi dan syarat & ketentuan kami',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
                AnimatedButton(
                  onPressed: () => signUp(),
                  color: Colors.black87,
                  enabled: true,
                  disabledColor: Colors.grey,
                  shadowDegree: ShadowDegree.dark,
                  borderRadius: 30,
                  duration: 10,
                  height: 50,
                  width: 370,
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    children: [
                      TextSpan(text: 'Sudah punya akun?'),
                      TextSpan(text: ' '),
                      TextSpan(
                        text: 'Yuk Login!',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                Get.to(LoginPage());
                              },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

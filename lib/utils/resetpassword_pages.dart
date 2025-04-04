import 'package:animated_button/animated_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myacademy_apps/utils/login_pages.dart';

class ResetpasswordPages extends StatefulWidget {
  const ResetpasswordPages({super.key});

  @override
  State<ResetpasswordPages> createState() => _ResetpasswordPagesState();
}

class _ResetpasswordPagesState extends State<ResetpasswordPages> {
  final email = TextEditingController();

  void reset() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email.text);
      // tampilkan pesan bahwa link sudah terkirim
      Get.snackbar(
        'Berhasil',
        'Link reset password sudah terkirim, silahkan cek inbox email anda',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
      email.clear();
    } catch (error) {
      Get.snackbar(
        'Error',
        'Email belum di isi',
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
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
              Padding(padding: EdgeInsets.all(2.0),
                child: AspectRatio(aspectRatio: 1, child: Image.asset('assets/Images/Forgot password.gif'),)
                ),
              Padding(padding: EdgeInsets.only(right: 150.0, bottom: 2.0),
                child: 
                Text('Reset Password', style: TextStyle(color: Colors.black ,fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0, bottom: 10.0,),
                  child: Text(
                    'Anda bisa mengisi email, yang ingin anda reset password nya dan jika sudah klik tombol kirim!.',
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
                      suffixIcon: Icon(Icons.email),
                      suffixIconColor: Colors.black,
                    ),
                  ),
                ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () => reset(),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(350, 50),
                    maximumSize: Size(350, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    backgroundColor: Colors.black,
                  ),
                  child: Text(
                    'Kirim Link',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                SizedBox(height: 30),
                AnimatedButton(
                  onPressed: (() => Get.to(LoginPage())),
                  color: Colors.blue,
                  enabled: true,
                  disabledColor: Colors.grey,
                  shadowDegree: ShadowDegree.light,
                  borderRadius: 30,
                  duration: 10,
                  height: 50,
                  width: 200,
                  child:Text(
                    'Kembali',
                    style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ),
              ],
            ),
          ),     
        ),
      ),
    );
  }
}

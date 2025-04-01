import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        error.toString(),
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Yuk Reset Password')),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: "Masukkan Email",
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (() => reset()),
              child: Text('Kirim Link'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';
class BuatProject extends StatelessWidget {
  const BuatProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dart: Pemula', style: TextStyle(fontWeight: FontWeight.bold),),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Cara Membuat Sebuah Project Dart', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.black),),
              Text('Setelah kita sudah menginstall dart'),
              SizedBox(height: 10,),
            ],
          )
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Untuk membuat project baru di Dart, Anda dapat menggunakan perintah berikut di terminal:',
                style: TextStyle(fontSize: 16),
              ),
            ),
            HighlightView(
                '''
dart create nama_project
                ''',
                language: 'terminal',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Gantilah "nama_project" dengan nama yang Anda inginkan untuk project Anda.',
                style: TextStyle(fontSize: 16),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '''
Tanda UnderScore (_) adalah tanda yang sangat penting,
ini menandakan bahwasa nya kita membuat sebuah project dart, 
jadi kalo mau membuat project dart pastikan menggunakan tanda underscore (_),
dan biasakan menggunakan huruf kecil.
                ''',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Contoh:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            HighlightView(
                '''
dart create my_first_project
                ''',
                language: 'terminal',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Setelah menjalankan perintah tersebut, Anda akan memiliki folder baru dengan nama project yang Anda buat, dan di dalamnya terdapat struktur dasar project Dart.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Untuk menjalankan project, masuk ke direktori project dan jalankan perintah:',
                style: TextStyle(fontSize: 16),
              ),
            ),
            HighlightView(
                '''
dart run
                ''',
                language: 'terminal',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Ini akan menjalankan aplikasi Dart Anda.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Selamat mencoba!',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';

class CaraInstall extends StatelessWidget {
  const CaraInstall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dart: Pemula',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Cara Menginstall Dart SDK ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text('Ikuti langkah - langkah nya'),
              SizedBox(height: 10),
            ],
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png',
                  height: 120,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Pengertian Dart SDK',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                'Dart SDK (Software Development Kit) adalah sekumpulan alat yang digunakan untuk mengembangkan aplikasi dengan bahasa Dart. SDK ini mencakup compiler Dart, pustaka inti, dan alat lainnya yang membantu dalam pengembangan aplikasi.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              Divider(height: 30),
              const Text(
                'Cara Menginstal Dart SDK',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Divider(height: 30),
              const SizedBox(height: 5),
              const Text(
                'Windows:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                '1. Unduh Dart SDK dari situs resmi\n https://dart.dev/get-dart.',
              ),
              Text('2. Instal file .exe dan ikuti petunjuk instalasi.'),
              Text(
                '3. Tambahkan Dart ke PATH sistem secara otomatis saat instalasi.',
              ),
              SizedBox(height: 5,),
              Text('4. Verifikasi instalasi dengan perintah:'),
              SizedBox(height: 5,),
              HighlightView(
                '''
C: dart --version
                ''',
                language: 'terminal',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              Divider(height: 30),
              const SizedBox(height: 10),
              const Text(
                'Mac:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5,),
              Text('1. Install homebrew jika diperlukan'),
              Text('2. Tambahkan offical tap'),
              HighlightView(
                '\$ brew tap dart-lang/dart',
                language: 'terminal',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              Text('3. lanjut install dart sdk nya'),
              HighlightView(
                '\$ brew install dart',
                language: 'terminal',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              Text('4. Verifikasi bahwa PATH Anda menyertakan direktori bin Homebrew. Menyiapkan jalur yang benar menyederhanakan penggunaan perintah Dart SDK seperti dart run dan dart format.'),
              Divider(height: 30),
              const SizedBox(height: 10),
              const Text(
                'Linux:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('1. Instal menggunakan pengelola paket Linux'),
              Text('2. Gunakan paket \'apt-get\''),
              Text('3. Perbarui file indeks paket dan instal paket HTTP aman.'),
              SizedBox(height: 5,),
              HighlightView(
                '\$ sudo apt-get update && sudo apt-get install apt-transport-https',
                language: 'terminal',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5,),
              Text('4. Unduh dan tambahkan kunci publik Google Linux GPG.'),
              SizedBox(height: 5,),
              HighlightView(
                '\$ sudo apt-get update && sudo apt-get install apt-transport-https',
                language: 'terminal',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5,),
              Text('5. Tambahkan repositori paket Dart ke sistem Linux Anda.'),
              SizedBox(height: 5,),
              HighlightView(
                '''
\$ echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' 
  | sudo tee /etc/apt/sources.list.d/dart_stable.list
                ''',
                language: 'terminal',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5,),
              Text('6. terakhir tinggali install dart nya'),
              SizedBox(height: 5,),
              HighlightView(
                '\$ sudo apt-get install dart',
                language: 'terminal',
                theme: atomOneDarkTheme,
                padding: EdgeInsets.all(12),
                textStyle: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5,),
              Divider(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

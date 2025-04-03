import 'package:flutter/material.dart';

class PengertianDart extends StatelessWidget {
  const PengertianDart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengertian Dart', style: TextStyle(color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 18, 84, 197),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png',
              height: 120,
            ),
            const SizedBox(height: 16),
            Text(
              'Pengertian Bahasa Pemrogramman Dart',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              '''
              Dart adalah bahasa pemrograman yang dikembangkan oleh Google pada tahun 2011. Tujuan utama Dart adalah untuk menyediakan alternatif modern dan lebih efisien daripada JavaScript, terutama untuk pengembangan aplikasi web dan mobile. Bahasa ini dirancang agar dapat menjalankan aplikasi dengan performa tinggi, mudah dipelajari, dan mendukung pengembangan aplikasi dalam berbagai platform, termasuk mobile, web, dan desktop.

              Dart memiliki sifat yang sangat fleksibel karena mendukung pengembangan aplikasi dengan berbagai paradigma, seperti pemrograman berorientasi objek (OOP) dan fungsional. Bahasa ini juga dilengkapi dengan fitur-fitur canggih seperti **garbage collection** otomatis, **kompilasi Ahead-Of-Time (AOT)**, dan **Just-In-Time (JIT)** yang membuatnya cocok untuk aplikasi berperforma tinggi.

              Selain itu, Dart dikenal karena sintaksnya yang mirip dengan bahasa pemrograman lain seperti Java atau C++, yang membuatnya lebih mudah dipahami oleh banyak developer yang sudah berpengalaman. Salah satu keunggulannya adalah kemampuannya untuk membangun aplikasi mobile yang kaya fitur menggunakan **Flutter**, framework open-source yang memungkinkan pengembangan aplikasi Android dan iOS secara bersamaan.

              Google memperkenalkan Dart dengan tujuan untuk menggantikan JavaScript dalam pengembangan web modern. Namun, seiring waktu, penggunaan Dart lebih difokuskan pada pengembangan aplikasi lintas platform melalui Flutter. Bahasa ini terus berkembang, dengan dukungan komunitas yang semakin besar dan berbagai pembaruan yang membuatnya lebih efisien serta mudah digunakan oleh pengembang.

              ''',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16,),
            ),
          ],
        ),
      ),
    );
  }
}

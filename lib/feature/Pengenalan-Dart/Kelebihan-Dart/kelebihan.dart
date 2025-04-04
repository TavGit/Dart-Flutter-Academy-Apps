import 'package:flutter/material.dart';

class KelebihanDart extends StatelessWidget {
  const KelebihanDart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kelebihan Dart', style: TextStyle(color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 18, 21, 197),
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
              'Berikut ini Beberapa Kelebihan Bahasa Pemrogramman Dart',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
              '1. Performa Tinggi',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            const Text(
              '''
              Dart mendukung dua jenis kompilasi: Ahead-Of-Time (AOT) dan Just-In-Time (JIT). Dengan AOT, aplikasi dapat dikompilasi menjadi kode mesin sebelum dijalankan, yang menghasilkan performa lebih cepat. Sedangkan JIT memungkinkan pengembangan yang lebih cepat karena kode langsung dijalankan selama runtime.
              ''',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16,),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
              '2. Pengembangan Multiplatform',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            const Text(
              '''
              Dart adalah bahasa utama yang digunakan dalam framework Flutter. Dengan Flutter, pengembang dapat membuat aplikasi yang dapat dijalankan di berbagai platform seperti Android, iOS, Web, dan Desktop tanpa menulis kode yang berbeda untuk setiap platform.
              ''',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16,),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
              '3. Sintaks yang Mudah Dipahami',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            const Text(
              '''
              Dart memiliki sintaks yang sangat mirip dengan bahasa pemrograman lain seperti Java, C++, atau JavaScript. Hal ini memudahkan pengembang yang sudah berpengalaman dengan bahasa tersebut untuk beralih ke Dart tanpa kesulitan berarti.
              ''',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16,),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
              '4. Pengelolaan Memori Otomatis',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            const Text(
              '''
              Dart dilengkapi dengan garbage collection otomatis, yang secara efisien mengelola memori dan menghindari kebocoran memori (memory leaks). Hal ini membantu pengembang fokus pada logika aplikasi tanpa khawatir tentang manajemen memori.
              ''',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16,),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
              '5. Pembangunan Aplikasi Responsif',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            const Text(
              '''
              Dart dan Flutter memungkinkan pengembangan aplikasi yang sangat responsif dan interaktif dengan performa tinggi. Animasi dan transisi dalam aplikasi yang dibangun dengan Dart sangat halus dan cepat.
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

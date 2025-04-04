import 'package:flutter/material.dart';

class KeunggulanFlutter extends StatelessWidget {
  const KeunggulanFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keunggulan Flutter', style: TextStyle(color: Colors.white),),
         backgroundColor: const Color.fromARGB(255, 23, 70, 92),
      ),
     body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/220px-Google-flutter-logo.svg.png',
              height: 120,
            ),
            SizedBox(height: 16),
            Text(
              'Keunggulan Flutter',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
              '1. Performa Tinggi',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter memiliki performa yang sangat baik karena menggunakan mesin rendering sendiri dan dapat mengkompilasi kode ke dalam kode asli (native code).',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
              '2. Hot Reload',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Dengan fitur hot reload, Anda dapat melihat perubahan yang Anda buat pada kode secara langsung tanpa harus memulai ulang aplikasi.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
              '3. Komponen UI yang Kaya',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter menyediakan banyak widget dan komponen UI yang dapat digunakan untuk membangun antarmuka pengguna yang menarik.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
              '4. Dukungan Multiplatform',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Dengan Flutter, Anda dapat mengembangkan aplikasi untuk Android, iOS, web, dan desktop dari satu basis kode.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
              '5. Komunitas yang Besar',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter memiliki komunitas yang besar dan aktif, sehingga Anda dapat dengan mudah menemukan dukungan dan sumber daya.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
              '6. Dokumentasi Lengkap',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Dokumentasi Flutter sangat lengkap dan mudah dipahami, sehingga memudahkan pengembang baru untuk belajar.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
              '7. Integrasi Mudah',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter dapat dengan mudah diintegrasikan dengan platform lain seperti Firebase, REST API, dan banyak lagi.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10), 
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
              '8. Desain Responsif',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter memungkinkan Anda untuk membuat desain yang responsif dan dapat menyesuaikan dengan berbagai ukuran layar.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
              '9. Animasi yang Kuat',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter memiliki dukungan yang kuat untuk animasi, sehingga Anda dapat membuat antarmuka pengguna yang dinamis dan menarik.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
              '10. Sumber Terbuka',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter adalah proyek sumber terbuka, sehingga Anda dapat berkontribusi dan memodifikasi kode sesuai kebutuhan.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
     ),
    );
  }
}
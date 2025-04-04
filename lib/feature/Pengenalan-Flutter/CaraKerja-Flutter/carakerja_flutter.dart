import 'package:flutter/material.dart';

class CarakerjaFlutter extends StatelessWidget {
  const CarakerjaFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cara Kerja Flutter', style: TextStyle(color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 2, 94, 78),
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
              'Cara Kerja Flutter',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter bekerja dengan cara mengkompilasi kode Dart menjadi kode asli (native code) untuk platform yang berbeda. Ini memungkinkan aplikasi Flutter untuk berjalan dengan performa tinggi di berbagai perangkat.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '1. Dart VM',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter menggunakan Dart VM untuk menjalankan aplikasi. Dart VM adalah mesin virtual yang memungkinkan eksekusi kode Dart secara langsung.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '2. JIT dan AOT Compilation',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter menggunakan dua jenis kompilasi: JIT (Just-In-Time) untuk pengembangan dan AOT (Ahead-Of-Time) untuk produksi. JIT memungkinkan hot reload, sedangkan AOT menghasilkan kode asli yang lebih cepat.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '3. Widget',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Semua elemen UI di Flutter adalah widget. Widget dapat berupa stateless (tidak berubah) atau stateful (dapat berubah). Ini memungkinkan pengembang untuk membangun antarmuka pengguna yang kompleks dengan mudah.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '4. Rendering Engine',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter menggunakan rendering engine sendiri yang disebut Skia. Ini memungkinkan Flutter untuk menggambar UI secara langsung ke layar, memberikan kontrol penuh atas setiap piksel.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '5. Platform Channels',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter menggunakan platform channels untuk berkomunikasi dengan kode asli (native code) di platform iOS dan Android. Ini memungkinkan pengembang untuk mengakses fitur perangkat keras dan API platform.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '6. Hot Reload',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Dengan fitur hot reload, pengembang dapat melihat perubahan yang mereka buat pada kode secara langsung tanpa harus memulai ulang aplikasi. Ini mempercepat proses pengembangan dan debugging.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '7. Multiplatform',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter memungkinkan pengembang untuk membuat aplikasi untuk berbagai platform (Android, iOS, web, dan desktop) dari satu basis kode. Ini mengurangi waktu dan usaha yang diperlukan untuk pengembangan lintas platform.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '8. Komunitas dan Ekosistem',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter memiliki komunitas yang besar dan aktif, serta banyak paket dan plugin yang tersedia untuk memperluas fungsionalitas aplikasi.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Kesimpulan',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter adalah framework yang kuat dan fleksibel untuk pengembangan aplikasi lintas platform. Dengan pemahaman yang baik tentang cara kerjanya, Anda dapat memanfaatkan semua fitur dan keunggulan yang ditawarkan oleh Flutter.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class CaraKerjaWidget extends StatelessWidget {
  const CaraKerjaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cara Kerja Widget',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Cara Kerja Widget',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text('Bagaimana sih Cara Kerja Widget?'),
              SizedBox(height: 10),
            ],
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          buildCard(
            title: '🔹 Segala Sesuatu adalah Widget',
            description:
                'Di Flutter, hampir semua elemen UI adalah widget, termasuk layout, tombol, teks, dan gambar.',
          ),
          buildCard(
            title: '🔹 Widget Bersifat Immutable',
            description:
                'Widget tidak dapat berubah setelah dibuat. Untuk mengubah UI, kita harus membuat widget baru dengan data baru.',
          ),
          buildCard(
            title: '🔹 Build Method akan Dipanggil Ulang',
            description:
                'Setiap kali data berubah (misalnya lewat setState), method `build()` akan dipanggil ulang untuk menggambar ulang UI.',
          ),
          buildCard(
            title: '🔹 Tree Struktur',
            description:
                'Widget disusun secara hierarki seperti pohon (widget tree). Parent bisa punya child, dan tiap child bisa punya child lagi.',
          ),
          buildCard(
            title: '🔹 Stateless vs Stateful Widget',
            description:
                'Stateless Widget tidak menyimpan state (data yang bisa berubah), sedangkan Stateful Widget bisa berubah tergantung interaksi.',
          ),
          buildCard(
            title: '🔹 Efisiensi Rendering',
            description:
                'Flutter hanya me-render ulang bagian yang berubah, bukan seluruh UI. Ini bikin performanya cepat dan efisien.',
          ),
        ],
      ),
    );
  }

  Widget buildCard({required String title, required String description}) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        tileColor: const Color.fromARGB(255, 10, 14, 39),
        title: Text(title, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        subtitle: Text(description, style: TextStyle(color: Colors.white),),
      ),
    );
  }
}

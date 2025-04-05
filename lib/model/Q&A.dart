import 'package:flutter/material.dart';

class QAPages extends StatelessWidget {
  const QAPages({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> qaList = [
      {
        'question': 'Apa itu aplikasi Dart & Flutter Academy?',
        'answer': 'Aplikasi ini adalah media pembelajaran dasar bahasa pemrograman Dart dan Flutter untuk pemula.'
      },
      {
        'question': 'Siapa pengembang dari aplikasi ini?',
        'answer': 'Aplikasi ini dikembangkan oleh Muhammad Gustav Ibrahim, seorang pelajar dan pengembang pemula.'
      },
      {
        'question': 'Apakah aplikasi ini gratis?',
        'answer': 'Ya, aplikasi ini sepenuhnya gratis untuk penggunaan pribadi dan edukatif.'
      },
      {
        'question': 'Apakah materi dalam aplikasi ini sudah lengkap?',
        'answer': 'Belum. Materi akan terus ditambahkan dan diperbarui oleh pengembang secara berkala.'
      },
      {
        'question': 'Apakah aplikasi ini memerlukan koneksi internet?',
        'answer': 'Sebagian fitur membutuhkan koneksi internet, seperti link ke sosial media. Namun, materi utama dapat diakses offline.'
      },
      {
        'question': 'Seberapa aman data saya saat menggunakan aplikasi ini?',
        'answer': 'Data disimpan secara aman dan hanya digunakan untuk kebutuhan internal aplikasi. Tidak dibagikan ke pihak lain.'
      },
      {
        'question': 'Apakah saya bisa memberikan masukan atau laporan bug?',
        'answer': 'Tentu bisa! Silakan hubungi pengembang melalui kontak di halaman Tentang Aplikasi.'
      },
      {
        'question': 'Di mana saya bisa belajar lebih lanjut tentang Dart dan Flutter?',
        'answer': 'Kamu bisa mengunjungi dokumentasi resmi Dart di https://dart.dev dan dokumentasi Flutter di https://flutter.dev untuk informasi yang lebih lengkap dan up-to-date.'
      },
      {
        'question': 'Kenapa kamu membuat aplikasi ini?',
        'answer': 'Untuk latihan pribadi sekaligus berbagi ilmu ke pemula lain yang ingin belajar Dart & Flutter.'
      },
      {
        'question': 'Apa tantangan terbesar selama membuat aplikasi ini?',
        'answer': 'Manajemen waktu dan debugging error. Tapi semuanya seru dan jadi pengalaman berharga.'
      },
      {
        'question': 'Apakah akan ada update lanjutan?',
        'answer': 'Iya. Akan ada penambahan fitur, materi, dan perbaikan bug di versi selanjutnya.'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Question & Answer',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: qaList.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ExpansionTile(
              title: Text(
                qaList[index]['question']!,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    qaList[index]['answer']!,
                    style: const TextStyle(height: 1.5),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

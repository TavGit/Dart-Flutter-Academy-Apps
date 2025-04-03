import 'package:flutter/material.dart';

class SejarahDart extends StatelessWidget {
  const SejarahDart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sejarah Dart'),
        backgroundColor: Colors.blueAccent,
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
            const Text(
              'Dart adalah bahasa pemrograman modern yang dikembangkan oleh Google pada tahun 2011. '
              'Dirancang untuk membangun aplikasi web, mobile, dan desktop yang cepat dan efisien, Dart '
              'memiliki sintaks yang mudah dipahami serta mendukung kompilasi Just-In-Time (JIT) dan Ahead-Of-Time (AOT).',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            const Text(
              'Pencipta Bahasa Pemrogramman Dart',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent),
            ),
            const SizedBox(height: 8),
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Lars_Bak.png/250px-Lars_Bak.png',
              height: 100,
            ),
            const SizedBox(height: 8),
            const Text(
              'Lars Bak, seorang insinyur perangkat lunak asal Denmark, dikenal sebagai pencipta bahasa Dart. '
              'Ia juga berperan dalam pengembangan mesin JavaScript V8 yang digunakan oleh Google Chrome.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

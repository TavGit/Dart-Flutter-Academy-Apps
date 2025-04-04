import 'package:flutter/material.dart';

class ApaituFlutter extends StatelessWidget {
  const ApaituFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Apa Itu Flutter?',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 76, 126, 212),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/220px-Google-flutter-logo.svg.png',
              height: 120,
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
              'Apa itu Flutter?',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter adalah framework open source yang dikembangkan oleh google untuk membuat sebuah aplikasi mobile, web dan dekstop, dari satu baris kode, menggunakan bahasa pemrogramman dart',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
              'Flutter Framwork buat apa?',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text('Flutter adaalah framework yg digunakan untuk membuat sebuah aplikasi mobile, web dan dekstop, tetapi untuk saat ini, flutter lebih overpower di kembangkan untuk aplikasi mobile',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
              'Dan kenapa kita harus menggunakan flutter?',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text('Karena flutter adalah framework yang di kembangkan oleh google, dan di dukung oleh banyak komunitas, dan juga banyak digunakan oleh perusahaan-perusahaan besar, seperti Alibaba, BMW, eBay, Google Ads, Tencent, Square, dan masih banyak lagi',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

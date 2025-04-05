import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';

class BuildOptimization extends StatelessWidget {
  const BuildOptimization({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Build Optimization',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Build Optimization',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text('Apa itu Build Optimization?, Build APK & Build Release?'),
              SizedBox(height: 10),
            ],
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            '🚀 Apa itu Build Optimization?',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Build Optimization adalah proses untuk mengoptimalkan ukuran dan performa aplikasi ketika sudah siap dirilis. '
            'Dengan melakukan build release, kamu memastikan bahwa aplikasi:\n\n'
            '✅ Ukurannya lebih kecil\n'
            '✅ Kinerjanya lebih cepat\n'
            '✅ Tidak membawa file debug yang tidak diperlukan\n'
            '✅ Sudah di-minify (menghapus kode tidak terpakai)',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),

          /// Build APK Debug
          Text(
            '🔧 Perintah Build APK (Debug):',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          HighlightView(
            '''
flutter build apk
            ''',
            language: 'bash',
            theme: atomOneDarkTheme,
            padding: EdgeInsets.all(12),
            textStyle: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 12),
          Text(
            'Perintah ini digunakan untuk membuild aplikasi dalam mode debug. '
            'Biasanya digunakan saat pengembangan untuk mengetes fitur-fitur aplikasi sebelum dirilis.',
            style: TextStyle(fontSize: 16),
          ),

          SizedBox(height: 20),

          /// Build APK Release
          Text(
            '📦 Perintah Build APK (Release):',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          HighlightView(
            '''
flutter build apk --release
            ''',
            language: 'bash',
            theme: atomOneDarkTheme,
            padding: EdgeInsets.all(12),
            textStyle: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 12),
          Text(
            'Perintah di atas akan menghasilkan APK release yang siap dipasang ke Play Store.',
            style: TextStyle(fontSize: 16),
          ),

          SizedBox(height: 20),
          Text(
            '💡 Tips Tambahan:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            '- Gunakan `--split-per-abi` untuk membagi APK berdasarkan arsitektur CPU.\n'
            '- Aktifkan Proguard dan R8 di `build.gradle` untuk meminify lebih lanjut.\n'
            '- Selalu test hasil release di device real sebelum upload ke Play Store.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

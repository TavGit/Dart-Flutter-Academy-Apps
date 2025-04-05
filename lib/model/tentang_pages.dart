import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TentangPages extends StatefulWidget {
  const TentangPages({super.key});

  @override
  State<TentangPages> createState() => _TentangPagesState();
}

class _TentangPagesState extends State<TentangPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tentang Aplikasi',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildSectionTitle('Informasi Aplikasi'),
          const SizedBox(height: 8),
          _buildInfoTile(Icons.phone_android, 'Nama Aplikasi', 'Dart & Flutter Academy'),
          _buildInfoTile(Icons.system_security_update, 'Versi Aplikasi', '1.0.0'),
          _buildInfoTile(Icons.person, 'Developer', 'Muhammad Gustav Ibrahim'),
          _buildInfoTile(
            Icons.description,
            'Deskripsi',
            'Aplikasi pembelajaran dasar bahasa pemrograman Dart dan framework Flutter. '
            'Dibuat untuk membantu pemula memahami konsep fundamental secara interaktif.',
          ),
          _buildInfoTile(
            Icons.warning,
            'Pemberitahuan',
            'Aplikasi ini masih dalam tahap pengembangan. Mohon maaf jika materi pembelajarannya belum lengkap.',
          ),

          const Divider(thickness: 1, height: 32),

          _buildSectionTitle('Kontak & Media Sosial'),
          const SizedBox(height: 8),
           _buildLinkTile(Icons.link, 'Linkedin', 'Muhammad Gustav Ibrahim', 'https://www.linkedin.com/in/muhammad-gustav-ibrahim/'),
          _buildLinkTile(Icons.link, 'Instagram', '@mhmmdgustavibrm_tech', 'https://www.instagram.com/mhmmdgustavibrm_tech/'),
          _buildLinkTile(Icons.link, 'GitHub', 'github.com/TavGit', 'https://github.com/TavGit'),

          const Divider(thickness: 1, height: 32),

          ExpansionTile(
            leading: const Icon(Icons.rule, color: Colors.blueGrey),
            title: const Text(
              'Syarat Penggunaan',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  '1. Aplikasi ini dikembangkan secara mandiri oleh Muhammad Gustav Ibrahim sebagai media pembelajaran pemrograman Dart dan Flutter.\n'
                  '2. Aplikasi hanya diperbolehkan digunakan untuk keperluan pribadi, edukatif, dan non-komersial.\n'
                  '3. Pengguna wajib menghormati hak cipta dan tidak memodifikasi konten tanpa seizin pengembang.\n'
                  '4. Dilarang menggunakan aplikasi untuk aktivitas yang merugikan, melanggar hukum, atau menyebarkan konten negatif.',
                  style: TextStyle(fontSize: 14, height: 1.6),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ExpansionTile(
            leading: const Icon(Icons.gavel, color: Colors.blueGrey),
            title: const Text(
              'Ketentuan',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  '1. Seluruh konten, desain, dan fitur dalam aplikasi ini merupakan karya asli dan dilindungi oleh undang-undang hak cipta.\n'
                  '2. Penggandaan, penyebaran, atau penyalinan aplikasi secara keseluruhan maupun sebagian tanpa izin resmi dari pengembang adalah tindakan ilegal.\n'
                  '3. Pengembang tidak bertanggung jawab atas kesalahan penggunaan aplikasi atau kerugian akibat penyalahgunaan oleh pihak ketiga.\n'
                  '4. Ketentuan ini dapat berubah sewaktu-waktu sesuai kebijakan pengembang.\n'
                  '5. Dengan menggunakan aplikasi ini, pengguna dianggap telah membaca dan menyetujui seluruh syarat dan ketentuan yang berlaku.',
                  style: TextStyle(fontSize: 14, height: 1.6),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ExpansionTile(
            leading: const Icon(Icons.privacy_tip, color: Colors.blueGrey),
            title: const Text(
              'Privasi Data Pengguna',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  '1. Aplikasi ini menghargai dan menjaga privasi setiap pengguna.\n'
                  '2. Data yang dikumpulkan hanya digunakan untuk keperluan operasional aplikasi, seperti autentikasi dan penyimpanan preferensi pengguna.\n'
                  '3. Semua data pengguna disimpan secara aman di server terpercaya dan tidak akan dibagikan kepada pihak ketiga tanpa izin pengguna.\n'
                  '4. Pengguna dapat meminta penghapusan akun dan data pribadi kapan saja melalui kontak yang tersedia.\n'
                  '5. Pengembang berkomitmen menjaga keamanan informasi pengguna sesuai dengan standar terbaik yang berlaku.',
                  style: TextStyle(fontSize: 14, height: 1.6),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildInfoTile(IconData icon, String title, String subtitle) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: Colors.blue),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
    );
  }

  Widget _buildLinkTile(IconData icon, String title, String subtitle, String url) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: Colors.blue),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
      onTap: () => _launchUrl(url),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
      if (!await launchUrl(uri)) {
    throw Exception('Could not launch $url');
  }
  }
}

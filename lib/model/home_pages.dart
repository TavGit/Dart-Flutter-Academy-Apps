import 'package:flutter/material.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Dart/dokumentasi_dart.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Flutter/dokumentasi_flutter.dart';
import 'package:myacademy_apps/Theme/theme_provider.dart';
import 'package:myacademy_apps/feature/Pengenalan-Dart/introduction_dart.dart';
import 'package:myacademy_apps/feature/Pengenalan-Flutter/introduction_flutter.dart';
import 'package:myacademy_apps/model/Q&A.dart';
import 'package:myacademy_apps/model/profil_pages.dart';
import 'package:myacademy_apps/model/tentang_pages.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool iconBool = false;
  IconData iconLight = Icons.wb_sunny;
  IconData iconDark = Icons.bedtime_outlined;

  // buat fungsi signOut
  void signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    // buat fungsi setiap kali user mengganti username, maka tampil username baru nya
    User? user = FirebaseAuth.instance.currentUser;
    Future<void> refreshUser() async {
      await user?.reload();
      setState(() {});
    }

    refreshUser();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dart & Flutter Academy",
          style: TextStyle(fontFamily: 'Jersey15-Regular', fontSize: 25),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
              setState(() {
                iconBool = !iconBool;
              });
            },
            icon: Icon(
              iconBool ? iconDark : iconLight,
              color: iconBool ? Colors.yellow : Colors.orange,
              size: 30,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                user?.displayName ?? 'Guest',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                user?.email ?? 'no-email@example.com',
                style: TextStyle(),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 6, 91, 187),
                child: Text(
                  user?.displayName?.substring(0, 1) ?? 'G',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.person, size: 30),
              title: Text('Informasi Profil', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilPages()),
                );
              },
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.chat, size: 30),
              title: Text('Q&A?', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => QAPages()));
              },
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.info, size: 30),
              title: Text('Tentang Aplikasi', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TentangPages()));
              },
            ),
            Divider(height: 250),
            ElevatedButton.icon(
              onPressed: () {
                signOut();
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(90, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                backgroundColor: const Color.fromARGB(255, 247, 16, 0),
              ),
              icon: Icon(Icons.logout, color: Colors.white, size: 20),
              label: Text(
                'SignOut',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Introduction Dart',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10),
            CustomCard(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IntroDartPages()),
                );
              },
              title: 'Pengenalan Dasar tentang Dart',
              subtitle: 'Apa itu bahasa pemrogramman dart?',
              color: Colors.purple,
              image: Image.asset('assets/Images/dart.png'),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Introduction Flutter',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10),
            CustomCard(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IntroFlutterPages()),
                );
              },
              title: 'Pengenalan Framework Flutter',
              subtitle: 'Memahami Framework Flutter',
              color: Colors.blue,
              image: Image.asset('assets/Images/flutter.png'),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Dokumentasi',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10),
            DocsDart(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DokumentasiDart()),
                );
              },
              title: 'Bahasa Pemrogramman Dart',
              subtitle: 'Dokumentasi',
              image: Image.asset('assets/Images/docDart.png'),
              color: Colors.deepOrange,
            ),
            SizedBox(height: 10),
            DocsFlutter(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DokumentasiFlutter()),
                );
              },
              title: 'Framework Flutter',
              subtitle: 'Dokumentasi',
              image: Image.asset('assets/Images/docFlutter.png'),
              color: Colors.indigo,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.onTap,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.color,
  });

  final VoidCallback onTap;
  final String title;
  final String subtitle;
  final Image image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
        child: Container(
          margin: EdgeInsets.only(bottom: 16),
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: color, width: 2),
          ),
          child: Row(
            children: [
              SizedBox(width: 60, height: 50, child: image),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(subtitle, style: TextStyle(fontSize: 14)),
                ],
              ),
            ],
          ),
        ),
    );
  }
}

class DocsDart extends StatelessWidget {
  const DocsDart({
    super.key,
    required this.onTap,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.color,
  });

  final VoidCallback onTap;
  final String title;
  final String subtitle;
  final Image image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color, width: 2),
        ),
        child: Row(
          children: [
            SizedBox(width: 80, height: 80, child: image),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(subtitle, style: TextStyle(fontSize: 14)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DocsFlutter extends StatelessWidget {
  const DocsFlutter({
    super.key,
    required this.onTap,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.color,
  });

  final VoidCallback onTap;
  final String title;
  final String subtitle;
  final Image image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color, width: 2),
        ),
        child: Row(
          children: [
            SizedBox(width: 80, height: 80, child: image),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(subtitle, style: TextStyle(fontSize: 14)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

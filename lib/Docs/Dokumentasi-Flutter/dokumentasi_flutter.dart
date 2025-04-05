import 'package:flutter/material.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Flutter/Dasar-Flutter/dasar_flutter.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Flutter/FormInput/form_input.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Flutter/Navigation/navigation.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Flutter/Performance/performance.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Flutter/StateManagement/state_management.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Flutter/Widget/widget_flutter.dart';

class DokumentasiFlutter extends StatefulWidget {
  const DokumentasiFlutter({super.key});

  @override
  State<DokumentasiFlutter> createState() => _DokumentasiFlutterState();
}

class _DokumentasiFlutterState extends State<DokumentasiFlutter> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: Text('Dokumentasi Flutter Kategory', style: TextStyle(fontWeight: FontWeight.bold),)),
        body: GridView(
          padding: EdgeInsets.all(20),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 30,
            childAspectRatio: 3 / 4,
          ),
          children: [
            _buildItem(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DasarFlutter()),
                );
              },
              image: 'assets/Flutter-Images/Dasar-Flutter.jpeg',
              title: 'Dasar Flutter',
              borderColor: Colors.blue,
            ),
            _buildItem(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => WidgetFlutter()));
              },
              image: 'assets/Flutter-Images/Widget.jpeg',
              title: 'Widget',
              borderColor: Colors.deepPurple,
            ),
            _buildItem(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => StateManagement()));
              },
              image: 'assets/Flutter-Images/State.jpeg',
              title: 'State Management',
              borderColor: Colors.red,
            ),
            _buildItem(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FormInput()));
              },
              image: 'assets/Flutter-Images/Form.jpeg',
              title: 'Form & Input',
              borderColor: Colors.brown,
            ),
            _buildItem(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Navigation()));
              },
              image: 'assets/Flutter-Images/Navigasi.jpeg',
              title: 'Navigation',
              borderColor: Colors.green,
            ),
            _buildItem(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Performance()));
              },
              image: 'assets/Flutter-Images/Performance.jpeg',
              title: 'Performance & Build',
              borderColor: Colors.yellow.shade700,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItem({
    required String image,
    required String title,
    required Color borderColor,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: borderColor, width: 2),
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0), // jarak semua sisi
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image,
                    fit: BoxFit.contain, // gambar muat semua
                    width: double.infinity,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

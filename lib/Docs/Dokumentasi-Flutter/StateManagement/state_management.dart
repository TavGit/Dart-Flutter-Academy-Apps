import 'package:flutter/material.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Flutter/StateManagement/Library/library_provider.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Flutter/StateManagement/Provider/provider_flutter.dart';
import 'package:myacademy_apps/Docs/Dokumentasi-Flutter/StateManagement/SetState/setstate_flutter.dart';

class StateManagement extends StatelessWidget {
  const StateManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'State Management',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 10,),
          InkWell(
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SetstateFlutter()),
                );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue, width: 2),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                leading: Icon(Icons.touch_app, size: 40, color: Colors.yellow),
                title: Text(
                  'SetState(){}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Paling Dasar buat update UI'),
              ),
            ),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProviderFlutter()),
                );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue, width: 2),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                leading: Icon(Icons.hub, size: 40, color: const Color.fromARGB(255, 4, 68, 245)),
                title: Text(
                  'Provider',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Mengenal apa itu Provider?, jenis-jenis Provider'),
              ),
            ),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LibraryProvider()),
                );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue, width: 2),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                leading: Icon(Icons.extension, size: 40, color: const Color.fromARGB(255, 3, 19, 65)),
                title: Text(
                  'Library (Tools) Provider',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Apa aja sih Library provider?, perbedaannya apa?'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
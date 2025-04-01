import 'package:flutter/material.dart';
import 'package:myacademy_apps/model/profil_pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilPages()),
              );
            },
            icon: Icon(Icons.account_circle, size: 40,),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hai! Welcome',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

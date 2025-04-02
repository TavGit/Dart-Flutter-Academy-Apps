import 'package:flutter/material.dart';
import 'package:myacademy_apps/Theme/theme_provider.dart';
import 'package:myacademy_apps/model/profil_pages.dart';
import 'package:provider/provider.dart';
import 'package:animated_button/animated_button.dart';
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
          style: TextStyle(fontFamily: 'Jersey15-Regular', fontSize: 30),
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
            ListTile(
              title: Text(
                'Hai, ${user!.displayName} 👋',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(color: Colors.lightBlue, height: 20),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.account_circle, size: 30),
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
              leading: Icon(Icons.settings),
              title: Text('Pengaturan', style: TextStyle(fontSize: 20)),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('Q&A?', style: TextStyle(fontSize: 20)),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.code),
              title: Text('Tentang Developer', style: TextStyle(fontSize: 20)),
            ),
            SizedBox(height: 20),
            Container(
              height: 600,
              alignment: Alignment.center,
              child: AnimatedButton(
                onPressed: () {
                  signOut();
                  Navigator.pop(context);
                },
                color: Colors.red[400] ?? Colors.red,
                enabled: true,
                disabledColor: Colors.grey,
                shadowDegree: ShadowDegree.light,
                borderRadius: 30,
                duration: 10,
                height: 50,
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.logout, color: Colors.white),
                    SizedBox(width: 4),
                    Text(
                      'SignOut',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Hai! Welcome', style: TextStyle(fontSize: 20))],
        ),
      ),
    );
  }
}

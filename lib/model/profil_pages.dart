import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
// import 'package:myacademy_apps/model/home_pages.dart';
// import './home_pages.dart';

class ProfilPages extends StatefulWidget {
  const ProfilPages({super.key});

  @override
  State<ProfilPages> createState() => _ProfilPagesState();
}

class _ProfilPagesState extends State<ProfilPages> {
  User? user;

  @override
  void initState() {
    super.initState();
    user = FirebaseAuth.instance.currentUser;
  }

  // buat fungsi verifikasi email
  void verifikasi() async {
    try {
      await user?.sendEmailVerification();
      Get.snackbar(
        'Link Terkirim',
        'Silahkan cek inbox email anda, link emal verifikasi sudah terkirim',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.blueGrey,
        colorText: Colors.white,
      );
    } catch (error) {
      Get.snackbar(
        'Error',
        'Terjadi kesalahan',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  // buat fungsi reload
  Future<void> reload() async {
    await user?.reload();
    user = FirebaseAuth.instance.currentUser;
    setState(() {});
  }

  // buat fungsi signOut
  void signOut() async {
    await FirebaseAuth.instance.signOut();
  }


  // buat fungsi mengambil username dari email
  String getUserName() {
    if (user?.displayName != null) {
      return user!.displayName!;
    } else {
      // Ambil nama dari email sebelum '@'
      return user?.email?.split('@')[0] ?? 'User';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Info Profil")),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            user?.emailVerified == true
                ? Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(Icons.check_circle, color: Colors.green,),
                      SizedBox(width: 8,),
                      Text("Email Sudah Terverifikasi")
                    ],
                  ),
                )
                : MaterialBanner(
                  content: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.close, color: const Color.fromARGB(255, 255, 17, 0),),
                            Text("Email Belum Terverifikasi"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  backgroundColor: Colors.red[100], 
                  actions: [
                    TextButton(
                      onPressed: verifikasi, 
                      child: Text("VERIFIKASI"),
                    ),
                  ],
                ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 2,
                child: Image.asset('assets/Images/user.png'),
              ),
            ),
            if (user?.emailVerified != true)
              ElevatedButton.icon(
              onPressed: reload,
              icon: Icon(Icons.refresh),
              label: Text("Refresh"),
              ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  'Username:',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                subtitle: Text(getUserName(), style: TextStyle(fontSize: 20)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  'Email: ',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                subtitle: Text('${user!.email}', style: TextStyle(fontSize: 20)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  'SignIn Method: ',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [SizedBox(height: 4), Icon(Icons.email)],
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                signOut();
                Navigator.pop(context);
              },
              icon: Icon(Icons.logout),
              label: Text("SignOut"),
            ),
          ],
        ),
      ),
    );
  }
}

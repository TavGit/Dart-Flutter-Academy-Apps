import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ProfilPages extends StatefulWidget {
  const ProfilPages({super.key});

  @override
  State<ProfilPages> createState() => _ProfilPagesState();
}

class _ProfilPagesState extends State<ProfilPages> {
  User? user;
  String newUsername = '';

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
        '',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        messageText: Text(
          'Silahkan cek inbox email anda, link emal verifikasi sudah terkirim',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
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
  try {
    await user?.reload();
    user = FirebaseAuth.instance.currentUser;

    if (user != null && !user!.emailVerified) {
      // Jika email belum diverifikasi, tampilkan Snackbar
      Get.snackbar(
        '','',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red[900],
        titleText: Text(
          'Silakan verifikasi email terlebih dahulu, baru klik tombol Refresh.',
          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        duration: Duration(seconds: 4),
      );
    } else {
      // Jika email sudah diverifikasi, tampilkan pesan sukses
      Get.snackbar(
        'Berhasil!', '',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        messageText: Text(
          'Email Sudah Terverifikasi',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        duration: Duration(seconds: 4),
      );
    }

    setState(() {});
  } catch (e) {
    Get.snackbar(
      'Error',
      'Terjadi kesalahan saat memuat ulang',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red[900],
      colorText: Colors.white,
    );
  }
}


  // buat fungsi edit username
  Future<void> editUsername(String username) async {
    String? tempValue = await showDialog(
      context: context,
      builder: (context) {
        String tempInput = username;
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          home: AlertDialog(
            title: Text(
              'Edit: $username',
              style: TextStyle(color: Colors.black),
            ),
            content: TextField(
              autofocus: true,
              decoration: InputDecoration(
                hintText: "Buat Username baru",
                hintStyle: TextStyle(color: Colors.grey),
              ),
              onChanged: (value) {
                tempInput = value;
              },
            ),
            actions: [
              // cancel button
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Cancel', style: TextStyle(color: Colors.black)),
              ),
              // save button
              TextButton(
                onPressed: () => Navigator.of(context).pop(tempInput),
                child: Text('Save', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        );
      },
    );

    if (tempValue != null && tempValue.isNotEmpty && tempValue != username) {
      try {
        await user?.updateDisplayName(tempValue);
        await user?.reload();
        user = FirebaseAuth.instance.currentUser;

        setState(() {});

        Get.snackbar(
          'Berhasil!',
          'Username diperbarui menjadi $tempValue',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
      } catch (error) {
        Get.snackbar(
          'Error',
          'Gagal memperbarui username: ${error.toString()}',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    }
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
                      Icon(Icons.check_circle, color: Colors.green),
                      SizedBox(width: 8),
                      Text("Email Sudah Terverifikasi"),
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
                            Icon(
                              Icons.close,
                              color: const Color.fromARGB(255, 255, 17, 0),
                            ),
                            Text(
                              "Email Belum Terverifikasi",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  backgroundColor: Colors.red[100],
                  actions: [
                    TextButton(
                      onPressed: verifikasi,
                      child: Text(
                        "VERIFIKASI",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.lightBlue,
                          decorationStyle: TextDecorationStyle.solid,
                        ),
                      ),
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
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: reload,
                icon: Icon(Icons.refresh, color: Colors.white),
                label: Text(
                  "Refresh",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('Username:', style: TextStyle(fontSize: 20)),
                subtitle: Text(getUserName(), style: TextStyle(fontSize: 20)),
                trailing: IconButton(
                  onPressed: () async {
                    await editUsername(getUserName());
                  },
                  icon: Icon(Icons.edit),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('Email: ', style: TextStyle(fontSize: 20)),
                subtitle: Text(
                  '${user!.email}',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('SignIn Method: ', style: TextStyle(fontSize: 20)),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [SizedBox(height: 4), Icon(Icons.email)],
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

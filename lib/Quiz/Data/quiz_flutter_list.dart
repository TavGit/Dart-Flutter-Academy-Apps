import 'package:myacademy_apps/Quiz/Model/quiz_model.dart';

List<QuizModel> question = [
  // Question dari pengenalan flutter
  // 2 Question dari Apa itu flutter?
  QuizModel(
    "Framework flutter diciptakan oleh perusahaan raksasa, yaitu?", 
    {
      "Google": true,
      "Microsoft": false,
      "Meta": false,
      "Nvidia": false,
    },
  ),
  QuizModel(
    "Framework flutter digunakan untuk?", 
    {
      "Membuat sebuah website": false,
      "Membuat sebuah aplikasi mobile": true,
      "Membuat sebuah aplikasi desktop": false,
      "Membuat sebuah analysis data": false,
    },
  ),
  // 2 Question dari keunggulan framework flutter
  QuizModel(
    "Apakah Framework Flutter memiliki dukungan multiplatform?", 
    {
      "Ya": true,
      "Tidak": false,
      "Tidak Tahu": false,
      "Mungkin,(belum pasti)": false,
    },
  ),
  QuizModel(
    "Fitur apa yang dimiliki oleh Flutter untuk melakukan perubahan secara langsung?", 
    {
      "Restart": false,
      "Hot Restarting": false,
      "Hot Reload": true,
      "Shutdown": false,
    },
  ),
  // 1 Question dari cara kerja framework flutter
  QuizModel(
    "Bagaimana cara kerja Framework Flutter?", 
    {
      "Flutter bekerja secara native code": true,
      "Flutter bekerja secara manual": false,
      "Flutter bekerja secara statis": false,
      "Flutter bekerja secara dinamis": false,
    },
  ),

  // 12 Question dari Dokumentasi Flutter
  // 2 Question dari Dasar Flutter
  QuizModel(
    "Seperti apa struktur proyek didalam Flutter?", 
    {
      "android/ios/lib/assets/pubspec.yaml/test/": true,
      "ios/lib/assets/pubspec.yaml/test/": false,
      "android/ios/lib/assets/build.gradle.kts/test/": false,
      "android/ios/google.services.json/assets/\npubspec.yaml/test/": false,
    },
  ),
  QuizModel(
    "Bagaimana sih cara kerja widget?", 
    {
      "Widget bekerja secara Tree Struktur": true,
      "Widget bekerja secara dinamis": false,
      "Widgert bekerja secara hot reload": false,
      "Widget bekerja secara statis": false,
    },
  ),
  // 2 Question dari Widget
  QuizModel(
    "Apa yang dimaksud dengan Stateless Widget?", 
    {
      "Stateless widget adalah widget yang\nbisa berubah-ubah": false,
      "Stateless widget adalah widget yang\nbersifat dinamis": false,
      "Stateless widget adalah widget yang\ntidak bisa berubah-ubah": true,
      "Stateless widget adalah widget yang\nbersifat statis": false,
    },
  ),
  QuizModel(
    "Apa yang dimaksud dengan Statefull Widget?", 
    {
      "Statefull widget adalah widget yang\nbisa berubah-ubah": true,
      "Statefull widget adalah widget yang\nbersifat dinamis": false,
      "Statefull widget adalah widget yang\ntidak bisa berubah-ubah": false,
      "Statefull widget adalah widget yang\nbersifat statis": false,
    },
  ),
  // 2 Question dari State Management
  QuizModel(
    "SetState itu berfungsi sebagai?", 
    {
      "Melakukan perubahan/Merebuild ulang UI": true,
      "Tidak ada fungsi nya, karena dia widget": false,
      "Tidak melakukan perubahan UI": false,
      "Melakukan perubahan package": false,
    },
  ),
  QuizModel(
    "Apa saja library Provider yang populer?", 
    {
      "Provider,Bloc,GetX": true,
      "Firebase,Supabase,MySql": false,
      "MongoDB,MariaDB, SQLite": false,
      "Docker,Kubernetes,Jenkins": false,
    },
  ),
  // 2 Question Form & Input
  QuizModel(
    "Apa itu TextField?", 
    {
      "Widget output bawaan flutter\nuntuk mengeluarkan teks": false,
      "Widget input bawaan flutter\nuntuk memasukkan teks": true,
      "Widget untuk menyembunyikan teks": false,
      "Widget untuk membuang teks": false,
    },
  ),
  QuizModel(
    "Apa itu TextEditingController?", 
    {
      "Widget untuk mengontroll data/teks dari TextField": true,
      "Widget untuk memasukkan teks": false,
      "Widget untuk menyembunyikan teks": false,
      "Widget untuk membuang teks": false,
    },
  ),
  // 2 Question dari Navigation
  QuizModel(
    "Navigator push digunakan untuk?", 
    {
      "Berbalik ke halaman sebelum nya": false,
      "Berpindah halaman": true,
      "Melompati halaman": false,
      "Menimpa halaman": false,
    },
  ),
  QuizModel(
    "Navigator pop digunakan untuk?", 
    {
      "Berbalik ke halaman sebelum nya": true,
      "Berpindah halaman": false,
      "Melompati halaman": false,
      "Menimpa halaman": false,
    },
  ),
  // 2 Question dari Performance & Build
  QuizModel(
    "Kenapa harus menggunakan const?", 
    {
      "Karena untuk digunakan widget yang immutable": true,
      "Karena digunakan untuk textfield": false,
      "Digunakan untuk widget yang bisa berubah-ubah": false,
      "Digunakan untuk setState": false,
    },
  ),
  QuizModel(
    "Apa perintah untuk membuild aplikasi dalam debug?", 
    {
      "flutter build apk --relase": false,
      "flutter build apk": true,
      "flutter run": false,
      "flutter doctor -v": false,
    },
  ),
];

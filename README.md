# 📱 Dart & Flutter Academy Apps
Dart & Flutter Academy Apps adalah aplikasi pembelajaran interaktif berbasis Flutter yang dirancang untuk membantu pengguna memahami bahasa pemrograman Dart dan framework Flutter secara bertahap dan menyenangkan.

Aplikasi mobile berbasis Flutter yang dibuat untuk membantu pengguna belajar bahasa pemrograman Dart dan framework Flutter melalui kuis interaktif serta tampilan antarmuka yang sederhana dan ramah pengguna.

Proyek ini cocok untuk siswa, mahasiswa, atau siapa pun yang baru mulai belajar Dart & Flutter dan ingin langsung praktik lewat soal-soal dasar.


# 🎯 Tujuan Project
Sebagai media latihan pemrograman Dart & Flutter.

Membantu pemula memahami konsep dasar Flutter.

Menyediakan fitur kuis dengan navigasi dinamis agar pengguna lebih interaktif.


 # 🚀 Fitur Utama:
📚 Materi Pembelajaran Dart & Flutter dari dasar, cocok untuk pemula.

🧠 Quiz Interaktif untuk menguji pemahaman pengguna setelah belajar materi.

🔐 Autentikasi Pengguna menggunakan Firebase Authentication (Login & Register).

🌗 Support Dark/Light Mode – Bisa disesuaikan sesuai preferensi pengguna.

👤 Halaman Profil pengguna yang menampilkan info akun dan kontrol aplikasi.

📄 Dokumentasi & Link Referensi langsung ke halaman resmi Dart & Flutter.

📦 Struktur project modular & bersih, mudah dikembangkan dan dipelajari.

 # 🛠 Teknologi yang Digunakan:
Flutter 3+

Dart

Firebase Authentication

Clean UI & Responsive Layout

# 🔌 Integrasi Backend (Firebase API)
Aplikasi ini terhubung ke backend menggunakan layanan Firebase, khususnya Firebase Authentication. Semua proses autentikasi pengguna — seperti login, registrasi, dan pengecekan status akun — dijalankan melalui API yang secara otomatis disediakan oleh Firebase melalui SDK resmi-nya.

Meskipun dalam kode tidak ada pemanggilan endpoint API secara manual (seperti https://api.firebase.com/...), sebenarnya proses komunikasi antara aplikasi dengan server Firebase tetap terjadi di balik layar. Hal ini dilakukan melalui metode REST API yang dibungkus dalam bentuk fungsi-fungsi dari package firebase_auth.

Setiap kali pengguna melakukan login atau registrasi, data kredensial (email & password) dikirim melalui jalur aman (HTTPS) ke server Firebase, kemudian Firebase mengautentikasi data tersebut dan mengirimkan respons balik ke aplikasi. Respons ini berisi data pengguna yang bisa digunakan untuk menyimpan status login, menampilkan nama/email pengguna di halaman profil, dan sebagainya.

Dengan pendekatan ini, aplikasi tetap ringan dan aman, karena seluruh logika backend seperti verifikasi akun, enkripsi password, hingga manajemen session, ditangani langsung oleh Firebase tanpa harus membuat API atau server backend sendiri secara manual.

Firebase juga menyajikan dashboard realtime yang memantau aktivitas pengguna, seperti jumlah user aktif harian (Daily Active Users), metode login yang digunakan, hingga statistik autentikasi. Hal ini sangat berguna untuk melihat performa aplikasi dalam skala kecil hingga besar.

Singkatnya, aplikasi ini menggunakan API Firebase sebagai jembatan komunikasi antara frontend (Flutter) dengan backend cloud-based tanpa repot membangun server manual—cukup melalui integrasi SDK yang disediakan secara resmi oleh Firebase.




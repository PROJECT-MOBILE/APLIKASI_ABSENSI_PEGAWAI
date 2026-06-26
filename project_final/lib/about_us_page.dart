import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  Widget memberLeft({
    required String image,
    required String name,
    required String role,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(radius: 45, backgroundImage: AssetImage(image)),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  role,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(description, textAlign: TextAlign.justify),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget memberRight({
    required String image,
    required String name,
    required String role,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  role,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(description, textAlign: TextAlign.justify),
              ],
            ),
          ),
          const SizedBox(width: 20),
          CircleAvatar(radius: 45, backgroundImage: AssetImage(image)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color(0xFF114DB8),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            const Icon(Icons.groups, size: 80, color: Color(0xFF114DB8)),

            const SizedBox(height: 15),

            const Text(
              "ABOUT US",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            const Text(
              "Kami adalah kelompok pengembang aplikasi Absensi Pegawai berbasis Flutter. "
              "Aplikasi ini dibuat sebagai implementasi mata kuliah Pemrograman Mobile.",
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            memberLeft(
              image: "dedek3.jpeg",
              name: "Fiqih Syahputra",
              role: "Ketua Kelompok",
              description:
                  "Bertanggung jawab dalam perancangan sistem, pembagian tugas, "
                  "serta pengembangan antarmuka aplikasi Flutter.",
            ),

            memberRight(
              image: "dedek3.jpeg",
              name: "Dedek Nurlina",
              role: "UI/UX Designer",
              description:
                  "Merancang tampilan aplikasi, membuat desain antarmuka, "
                  "serta memastikan pengalaman pengguna berjalan dengan baik.",
            ),

            memberLeft(
              image: "dedek3.jpeg",
              name: "Cici Melisma",
              role: "Frontend Developer",
              description:
                  "Mengembangkan halaman-halaman aplikasi menggunakan Flutter "
                  "serta menghubungkan navigasi antar halaman.",
            ),

            memberRight(
              image: "dedek3.jpeg",
              name: "Yudhis Agil Raspati",
              role: "Backend & Database",
              description:
                  "Mengelola penyimpanan data, proses autentikasi, dan integrasi "
                  "database dengan aplikasi.",
            ),

            memberLeft(
              image: "dedek3.jpeg",
              name: "Kurnia Essiva Sahel Silalahi",
              role: "Quality Assurance",
              description:
                  "Melakukan pengujian aplikasi, memperbaiki bug, dan memastikan "
                  "seluruh fitur berjalan dengan baik.",
            ),

            const SizedBox(height: 30),

            const Divider(),

            const Text(
              "© 2026 Kelompok Mobile Programming",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

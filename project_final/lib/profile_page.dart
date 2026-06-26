import 'package:flutter/material.dart';
import 'login_page.dart';
import 'about_us_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  void logout(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const LoginPage()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF114DB8),
        centerTitle: true,
        title: const Text("Profil", style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),

            const CircleAvatar(
              radius: 60,
              backgroundColor: Color(0xFF114DB8),
              child: Icon(Icons.person, color: Colors.white, size: 70),
            ),

            const SizedBox(height: 20),

            const Text(
              "DEDEK NURLINA",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 5),

            const Text("0701233170", style: TextStyle(color: Colors.grey)),

            const SizedBox(height: 30),

            Card(
              child: ListTile(
                leading: const Icon(Icons.person, color: Colors.blue),
                title: const Text("Nama Lengkap"),
                subtitle: const Text("Dedek Nurlina"),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.badge, color: Colors.green),
                title: const Text("NIM"),
                subtitle: const Text("0701233170"),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.school, color: Colors.orange),
                title: const Text("Program Studi"),
                subtitle: const Text("Teknik Komputer"),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.email, color: Colors.red),
                title: const Text("Email"),
                subtitle: const Text("dedek0701233170@uinsu.ac.id"),
              ),
            ),

            const SizedBox(height: 15),

            Card(
              child: ListTile(
                leading: const Icon(Icons.groups, color: Colors.indigo),
                title: const Text("Profil Kelompok"),
                subtitle: const Text("Lihat informasi anggota kelompok"),
                trailing: const Icon(Icons.arrow_forward_ios, size: 18),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const AboutUsPage()),
                  );
                },
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  logout(context);
                },
                icon: const Icon(Icons.logout, color: Colors.white),
                label: const Text(
                  "LOGOUT",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

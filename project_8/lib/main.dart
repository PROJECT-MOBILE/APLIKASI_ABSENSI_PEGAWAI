import 'package:flutter/material.dart';
import 'riwayat_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  final List<String> menu = [
    'Dashboard',
    'Riwayat',
    'Profil',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [

          // SIDEBAR
          Container(
            width: 250,
            color: const Color(0xFFEAE5EC),

            child: Column(
              children: [

                const SizedBox(height: 80),

                const Text(
                  'Menu',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 40),

                // DASHBOARD
                ListTile(
                  title: const Text(
                    'Dashboard',
                    style: TextStyle(fontSize: 18),
                  ),

                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DashboardPage(),
                      ),
                    );
                  },
                ),

                // RIWAYAT
                ListTile(
                  title: const Text(
                    'Riwayat',
                    style: TextStyle(fontSize: 18),
                  ),

                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RiwayatPage(),
                      ),
                    );
                  },
                ),

                // PROFIL
                ListTile(
                  title: const Text(
                    'Profil',
                    style: TextStyle(fontSize: 18),
                  ),

                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Halaman Profil'),
                      ),
                    );
                  },
                ),

              ],
            ),
          ),

          // CONTENT
          Expanded(
            child: Container(
              color: Colors.grey,

              child: const Center(
                child: Text(
                  'Dashboard',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class DetailRiwayatPage extends StatelessWidget {
  const DetailRiwayatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [

          // HEADER
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 60, bottom: 20),
            color: Colors.indigo,
            child: const Column(
              children: [
                Icon(Icons.shield, color: Colors.white, size: 35),
                SizedBox(height: 10),
                Text(
                  "Detail Riwayat",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // CONTENT
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              color: Colors.indigo[700],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // BULAN
                  const Text(
                    "Bulan Ini",
                    style: TextStyle(color: Colors.white70),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "27 maret 2026",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // JAM MASUK
                  buildRow("Jam Masuk", "08:01"),

                  // JAM KELUAR
                  buildRow("Jam Keluar", "17:00"),

                  // STATUS
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Status",
                          style: TextStyle(color: Colors.white)),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "Hadir",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: 20),

                  // FOTO
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Image.asset("assets/foto1.png", height: 80),
                          const SizedBox(height: 5),
                          const Text("foto masuk",
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset("assets/foto2.png", height: 80),
                          const SizedBox(height: 5),
                          const Text("foto keluar",
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // LOKASI
                  const Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.white70),
                      SizedBox(width: 5),
                      Text(
                        "Kantor Bapenda Sumut",
                        style: TextStyle(color: Colors.white70),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),

          // BOTTOM NAV
          BottomNavigationBar(
            selectedItemColor: Colors.indigo,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: "Dashboard"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list), label: "Riwayat"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profil"),
            ],
          )
        ],
      ),
    );
  }

  Widget buildRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(color: Colors.white)),
          Text(value, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
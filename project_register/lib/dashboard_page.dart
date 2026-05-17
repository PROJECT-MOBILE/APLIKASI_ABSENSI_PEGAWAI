import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  // 🔽 VALUE DROPDOWN
  String selectedTanggal = "Hari Ini";
  String selectedStatus = "Semua";
  String selectedBulan = "Maret";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // 🔷 HEADER PROFIL
          Container(
            height: 160,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.bottomLeft,
            color: Colors.blue,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Aswin Cenglu",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                Text(
                  "aswin@gmail.com",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),

          // 🔳 CONTENT
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25),
                ),
                color: Colors.white,
              ),
              child: ListView(
                children: [
                  // 🔴 STATUS CARD
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Status Absensi"),
                        SizedBox(height: 5),
                        Text(
                          "Belum Absen",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text("Anda belum melakukan absen hari ini"),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // 🔽 DROPDOWN FILTER
                  const Text(
                    "Filter Riwayat",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // 📅 FILTER TANGGAL
                  DropdownButtonFormField(
                    value: selectedTanggal,
                    decoration: const InputDecoration(
                      labelText: "Filter Tanggal",
                      border: OutlineInputBorder(),
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: "Hari Ini",
                        child: Text("Hari Ini"),
                      ),
                      DropdownMenuItem(
                        value: "Kemarin",
                        child: Text("Kemarin"),
                      ),
                      DropdownMenuItem(
                        value: "7 Hari",
                        child: Text("7 Hari Terakhir"),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedTanggal = value!;
                      });
                    },
                  ),

                  const SizedBox(height: 15),

                  // ✅ FILTER STATUS
                  DropdownButtonFormField(
                    value: selectedStatus,
                    decoration: const InputDecoration(
                      labelText: "Filter Status",
                      border: OutlineInputBorder(),
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: "Semua",
                        child: Text("Semua"),
                      ),
                      DropdownMenuItem(
                        value: "Hadir",
                        child: Text("Hadir"),
                      ),
                      DropdownMenuItem(
                        value: "Izin",
                        child: Text("Izin"),
                      ),
                      DropdownMenuItem(
                        value: "Terlambat",
                        child: Text("Terlambat"),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedStatus = value!;
                      });
                    },
                  ),

                  const SizedBox(height: 15),

                  // 📆 FILTER BULAN
                  DropdownButtonFormField(
                    value: selectedBulan,
                    decoration: const InputDecoration(
                      labelText: "Filter Bulan",
                      border: OutlineInputBorder(),
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: "Januari",
                        child: Text("Januari"),
                      ),
                      DropdownMenuItem(
                        value: "Februari",
                        child: Text("Februari"),
                      ),
                      DropdownMenuItem(
                        value: "Maret",
                        child: Text("Maret"),
                      ),
                      DropdownMenuItem(
                        value: "April",
                        child: Text("April"),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedBulan = value!;
                      });
                    },
                  ),

                  const SizedBox(height: 20),

                  // 🔵 BUTTON ABSEN MASUK
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/checkin');
                      },
                      child: const Text("Absen Masuk"),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // ⚪ BUTTON ABSEN PULANG
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Absen Pulang"),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // 🕘 RIWAYAT
                  const Text(
                    "Riwayat Hari Ini",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  ListTile(
                    title: const Text("Masuk"),
                    trailing: const Text("Belum Absen"),
                  ),
                  ListTile(
                    title: const Text("Pulang"),
                    trailing: const Text("Belum Absen"),
                  ),
                ],
              ),
            ),
          ),

          // 🔻 BOTTOM NAVIGATION
          BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Dashboard",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: "Riwayat",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profil",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
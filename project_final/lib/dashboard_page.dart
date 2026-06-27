import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // HEADER
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xFF114DB8),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),

                    Row(
                      children: [
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.person, color: Color(0xFF114DB8)),
                        ),

                        SizedBox(width: 12),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Aswin Cenglu",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "AswinCenglu@gmail.com",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // STATUS ABSENSI
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 5),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.red.shade100,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.close, color: Colors.red),
                          ),

                          const SizedBox(width: 12),

                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Status Absensi",
                                  style: TextStyle(fontSize: 12),
                                ),

                                Text(
                                  "Belum Absen",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                ),

                                Text(
                                  "Anda belum melakukan absensi hari ini",
                                  style: TextStyle(fontSize: 11),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.green.shade100,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              "Hari Kerja",
                              style: TextStyle(fontSize: 11),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    // INFO
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            dense: true,
                            leading: const Icon(
                              Icons.calendar_month,
                              color: Colors.blue,
                            ),
                            title: const Text(
                              "Tanggal",
                              style: TextStyle(fontSize: 12),
                            ),
                            subtitle: const Text(
                              "Jumat, 27 Maret 2026",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),

                        Expanded(
                          child: ListTile(
                            dense: true,
                            leading: const Icon(
                              Icons.location_on,
                              color: Colors.blue,
                            ),
                            title: const Text(
                              "Lokasi",
                              style: TextStyle(fontSize: 12),
                            ),
                            subtitle: const Text(
                              "Kantor Bapenda Sumut",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // BUTTON ABSEN MASUK
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2F4A89),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          "Absen Masuk",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: null,
                        child: const Text("Absen Pulang"),
                      ),
                    ),

                    const SizedBox(height: 30),

                    // RIWAYAT
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Riwayat Hari Ini",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    Card(
                      child: ListTile(
                        leading: const Icon(Icons.login, color: Colors.green),
                        title: const Text("Masuk"),
                        subtitle: const Text("--"),
                        trailing: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text("Belum Absen"),
                        ),
                      ),
                    ),

                    Card(
                      child: ListTile(
                        leading: const Icon(Icons.logout, color: Colors.red),
                        title: const Text("Pulang"),
                        subtitle: const Text("--"),
                        trailing: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text("Belum Absen"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


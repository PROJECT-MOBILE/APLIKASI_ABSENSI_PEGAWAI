import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> attendanceHistory = [
      {
        'tanggal': '01 Juni 2026',
        'masuk': '08:00',
        'keluar': '16:00',
        'status': 'Hadir',
      },
      {
        'tanggal': '02 Juni 2026',
        'masuk': '08:10',
        'keluar': '16:05',
        'status': 'Terlambat',
      },
      {
        'tanggal': '03 Juni 2026',
        'masuk': '-',
        'keluar': '-',
        'status': 'Tidak Hadir',
      },
      {
        'tanggal': '04 Juni 2026',
        'masuk': '07:55',
        'keluar': '16:00',
        'status': 'Hadir',
      },
      {
        'tanggal': '05 Juni 2026',
        'masuk': '08:03',
        'keluar': '16:10',
        'status': 'Hadir',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF114DB8),
        title: const Text(
          "Riwayat Absensi",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: attendanceHistory.length,

        itemBuilder: (context, index) {
          final item = attendanceHistory[index];

          Color statusColor = Colors.green;

          if (item['status'] == 'Terlambat') {
            statusColor = Colors.orange;
          }

          if (item['status'] == 'Tidak Hadir') {
            statusColor = Colors.red;
          }

          return Card(
            margin: const EdgeInsets.only(bottom: 15),

            elevation: 3,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),

            child: Padding(
              padding: const EdgeInsets.all(15),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    item['tanggal']!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const Divider(),

                  Row(
                    children: [
                      const Icon(Icons.login, color: Colors.green),

                      const SizedBox(width: 10),

                      Text("Masuk : ${item['masuk']}"),
                    ],
                  ),

                  const SizedBox(height: 8),

                  Row(
                    children: [
                      const Icon(Icons.logout, color: Colors.red),

                      const SizedBox(width: 10),

                      Text("Keluar : ${item['keluar']}"),
                    ],
                  ),

                  const SizedBox(height: 12),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),

                    decoration: BoxDecoration(
                      color: statusColor,
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Text(
                      item['status']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

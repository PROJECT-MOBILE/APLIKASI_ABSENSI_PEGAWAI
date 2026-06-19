import 'package:flutter/material.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {

  String statusMasuk = "-";
  String statusKeluar = "-";

  void checkIn() {

    DateTime now = DateTime.now();

    setState(() {
      statusMasuk =
          "${now.hour}:${now.minute}:${now.second}";
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Absensi Masuk Berhasil"),
      ),
    );
  }

  void checkOut() {

    DateTime now = DateTime.now();

    setState(() {
      statusKeluar =
          "${now.hour}:${now.minute}:${now.second}";
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Absensi Keluar Berhasil"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF114DB8),
        title: const Text(
          "Absensi",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: const Color(0xFF114DB8),
                borderRadius: BorderRadius.circular(20),
              ),

              child: const Column(
                children: [

                  Icon(
                    Icons.fingerprint,
                    size: 70,
                    color: Colors.white,
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Smart Attendance",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.login,
                  color: Colors.green,
                ),
                title: const Text("Jam Masuk"),
                subtitle: Text(statusMasuk),
              ),
            ),

            const SizedBox(height: 10),

            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
                title: const Text("Jam Keluar"),
                subtitle: Text(statusKeluar),
              ),
            ),

            const SizedBox(height: 40),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),

                onPressed: checkIn,

                icon: const Icon(
                  Icons.login,
                  color: Colors.white,
                ),

                label: const Text(
                  "CHECK IN",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),

                onPressed: checkOut,

                icon: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),

                label: const Text(
                  "CHECK OUT",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
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
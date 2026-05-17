import 'package:flutter/material.dart';

class RiwayatPage extends StatefulWidget {
  const RiwayatPage({super.key});

  @override
  State<RiwayatPage> createState() => _RiwayatPageState();
}

class _RiwayatPageState extends State<RiwayatPage> {

  String status = 'Semua Riwayat';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            SizedBox(height: 40),

            Text(
              'Riwayat Absensi',
              style: TextStyle(fontSize: 28),
            ),

            SizedBox(height: 20),

            Text(status),

            SizedBox(height: 30),

            Row(
              children: [

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        status = 'Riwayat Hadir dipilih';
                      });
                    },
                    child: Text('Hadir'),
                  ),
                ),

                SizedBox(width: 10),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        status = 'Riwayat Izin dipilih';
                      });
                    },
                    child: Text('Izin'),
                  ),
                ),

              ],
            ),

            SizedBox(height: 30),

            Column(
              children: [

                Text('Senin - Hadir'),

                SizedBox(height: 10),

                Text('Selasa - Hadir'),

                SizedBox(height: 10),

                Text('Rabu - Izin'),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
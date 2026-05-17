import 'package:flutter/material.dart';

class CheckInPage extends StatefulWidget {
  const CheckInPage({super.key});

  @override
  State<CheckInPage> createState() => _CheckInPageState();
}

class _CheckInPageState extends State<CheckInPage> {

  String status = 'Belum Check In';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            SizedBox(height: 40),

            Text(
              'Check In',
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
                        status = 'Lokasi berhasil diambil';
                      });
                    },
                    child: Text('Ambil Lokasi'),
                  ),
                ),

              ],
            ),

            SizedBox(height: 15),

            Row(
              children: [

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        status = 'Foto berhasil diambil';
                      });
                    },
                    child: Text('Ambil Foto'),
                  ),
                ),

              ],
            ),

            SizedBox(height: 15),

            Row(
              children: [

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        status = 'Check In berhasil';
                      });
                    },
                    child: Text('Check In'),
                  ),
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
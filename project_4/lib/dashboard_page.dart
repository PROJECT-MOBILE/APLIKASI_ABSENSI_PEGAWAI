import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  String status = 'Belum ada menu dipilih';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            SizedBox(height: 40),

            Text(
              'Dashboard',
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
                        status = 'Menu Check In dipilih';
                      });
                    },
                    child: Text('Check In'),
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
                        status = 'Menu Riwayat dipilih';
                      });
                    },
                    child: Text('Riwayat'),
                  ),
                ),

                SizedBox(width: 10),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        status = 'Menu Profil dipilih';
                      });
                    },
                    child: Text('Profil'),
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
                        status = 'Menu Logout dipilih';
                      });
                    },
                    child: Text('Logout'),
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
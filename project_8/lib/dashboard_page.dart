import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Dashboard'),
      ),

      drawer: Drawer(
        child: Column(
          children: [

            SizedBox(height: 50),

            Text(
              'Menu',
              style: TextStyle(fontSize: 24),
            ),

            ListTile(
              title: Text('Dashboard'),
            ),

            ListTile(
              title: Text('Riwayat'),
            ),

            ListTile(
              title: Text('Profil'),
            ),

          ],
        ),
      ),

      body: Center(
        child: Text(
          'Dashboard',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
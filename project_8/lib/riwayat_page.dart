import 'package:flutter/material.dart';

class RiwayatPage extends StatelessWidget {
  const RiwayatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,

      child: Scaffold(
        appBar: AppBar(
          title: const Text('Riwayat'),

          bottom: const TabBar(
            tabs: [

              Tab(text: 'Hadir'),
              Tab(text: 'Izin'),
              Tab(text: 'Sakit'),

            ],
          ),
        ),

        body: const TabBarView(
          children: [

            Center(
              child: Text('Data Hadir'),
            ),

            Center(
              child: Text('Data Izin'),
            ),

            Center(
              child: Text('Data Sakit'),
            ),

          ],
        ),
      ),
    );
  }
}
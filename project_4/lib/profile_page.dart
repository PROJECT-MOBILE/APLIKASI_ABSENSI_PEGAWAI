import 'package:flutter/material.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {

  String status = 'Profil Pengguna';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            SizedBox(height: 40),

            Text(
              'Profil',
              style: TextStyle(fontSize: 28),
            ),

            SizedBox(height: 20),

            Text(status),

            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text('Nama'),
                Text('Dedek Nurlina'),

              ],
            ),

            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text('Email'),
                Text('dedek0701233170.ac.id'),

              ],
            ),

            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text('Status'),
                Text('Aktif'),

              ],
            ),

            SizedBox(height: 30),

            Row(
              children: [

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        status = 'Tombol Edit Profil ditekan';
                      });
                    },
                    child: Text('Edit Profil'),
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
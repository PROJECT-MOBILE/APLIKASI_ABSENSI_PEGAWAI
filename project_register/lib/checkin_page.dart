import 'package:flutter/material.dart';

class CheckinPage extends StatefulWidget {
  const CheckinPage({super.key});

  @override
  State<CheckinPage> createState() => _CheckinPageState();
}

class _CheckinPageState extends State<CheckinPage> {
  // 🔘 RADIO BUTTON
  String metode = "Foto";

  // 🔄 SWITCH
  bool gpsOtomatis = false;
  bool selfieOtomatis = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 🔻 BOTTOM NAVIGATION
      bottomNavigationBar: BottomNavigationBar(
        items: const [
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

      // 🔳 BODY
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 🔷 HEADER
            Container(
              height: 120,
              width: double.infinity,
              alignment: Alignment.center,
              color: Colors.blue,
              child: const Text(
                "Absen Masuk",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 15),

            // 🗺️ MAP AREA
            Container(
              height: 250,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: const Text("Map Area"),
            ),

            const SizedBox(height: 15),

            // 📍 INFO LOKASI & JAM
            const Column(
              children: [
                Text(
                  "Lokasi",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Kantor Bapenda Sumut"),
                SizedBox(height: 5),
                Text(
                  "Jam",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("08:01 WIB"),
              ],
            ),

            const SizedBox(height: 20),

            // 🔘 RADIO BUTTON
            const Text(
              "Metode Absen",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: "Foto",
                  groupValue: metode,
                  onChanged: (value) {
                    setState(() {
                      metode = value!;
                    });
                  },
                ),
                const Text("Foto"),

                Radio(
                  value: "GPS",
                  groupValue: metode,
                  onChanged: (value) {
                    setState(() {
                      metode = value!;
                    });
                  },
                ),
                const Text("GPS"),
              ],
            ),

            const SizedBox(height: 20),

            // 🔄 SWITCH GPS
            SwitchListTile(
              title: const Text("GPS Otomatis"),
              subtitle: const Text("Aktifkan lokasi otomatis"),
              value: gpsOtomatis,
              onChanged: (value) {
                setState(() {
                  gpsOtomatis = value;
                });
              },
            ),

            // 🔄 SWITCH SELFIE
            SwitchListTile(
              title: const Text("Mode Selfie Otomatis"),
              subtitle: const Text("Kamera langsung terbuka"),
              value: selfieOtomatis,
              onChanged: (value) {
                setState(() {
                  selfieOtomatis = value;
                });
              },
            ),

            const SizedBox(height: 15),

            // 🔘 CHIP
            Wrap(
              spacing: 10,
              children: const [
                Chip(
                  label: Text("Dalam Area"),
                ),
                Chip(
                  label: Text("Akurat"),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // 📸 BUTTON FOTO
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Ambil Foto"),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
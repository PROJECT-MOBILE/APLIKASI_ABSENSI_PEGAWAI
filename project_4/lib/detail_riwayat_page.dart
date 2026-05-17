import 'package:flutter/material.dart';

class DetailRiwayatPage extends StatefulWidget {
  const DetailRiwayatPage({super.key});

  @override
  State<DetailRiwayatPage> createState() => _DetailRiwayatPageState();
}

class _DetailRiwayatPageState extends State<DetailRiwayatPage> {
  String selectedBulan = "Bulan Ini";

  // ✅ RADIO
  String statusAbsen = "Hadir";

  // ✅ CHECKBOX
  bool konfirmasi = false;

  // ✅ CHIP
  List<String> kategori = ["Tepat Waktu", "Terlambat"];
  String selectedKategori = "Tepat Waktu";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // HEADER
          Container(
            height: 120,
            alignment: Alignment.center,
            child: const Text(
              "Detail Riwayat",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ListView(
                children: [
                  // DROPDOWN
                  DropdownButtonFormField(
                    value: selectedBulan,
                    items: const [
                      DropdownMenuItem(
                        value: "Bulan Ini",
                        child: Text("Bulan Ini"),
                      ),
                      DropdownMenuItem(
                        value: "Bulan Lalu",
                        child: Text("Bulan Lalu"),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedBulan = value.toString();
                      });
                    },
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                  ),

                  const SizedBox(height: 15),

                  const Text("27 Maret 2026"),
                  const Divider(),

                  // JAM
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Jam Masuk"),
                      Text("08:01"),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Jam Keluar"),
                      Text("17:00"),
                    ],
                  ),

                  const SizedBox(height: 15),

                  // ✅ RADIO BUTTON
                  const Text("Status Absen"),
                  Row(
                    children: [
                      Radio(
                        value: "Hadir",
                        groupValue: statusAbsen,
                        onChanged: (value) {
                          setState(() {
                            statusAbsen = value.toString();
                          });
                        },
                      ),
                      const Text("Hadir"),

                      Radio(
                        value: "Izin",
                        groupValue: statusAbsen,
                        onChanged: (value) {
                          setState(() {
                            statusAbsen = value.toString();
                          });
                        },
                      ),
                      const Text("Izin"),
                    ],
                  ),

                  const SizedBox(height: 15),

                  // ✅ CHIP
                  const Text("Kategori"),
                  Wrap(
                    spacing: 10,
                    children: kategori.map((item) {
                      return ChoiceChip(
                        label: Text(item),
                        selected: selectedKategori == item,
                        onSelected: (_) {
                          setState(() {
                            selectedKategori = item;
                          });
                        },
                      );
                    }).toList(),
                  ),

                  const SizedBox(height: 20),

                  // FOTO
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            color: Colors.grey[300],
                          ),
                          const SizedBox(height: 5),
                          const Text("Foto Masuk"),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            color: Colors.grey[300],
                          ),
                          const SizedBox(height: 5),
                          const Text("Foto Keluar"),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  const Text("Lokasi"),
                  const Text("Kantor Bapenda Sumut"),

                  const SizedBox(height: 20),

                  // ✅ CHECKBOX
                  Row(
                    children: [
                      Checkbox(
                        value: konfirmasi,
                        onChanged: (value) {
                          setState(() {
                            konfirmasi = value!;
                          });
                        },
                      ),
                      const Text("Konfirmasi data sudah benar"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
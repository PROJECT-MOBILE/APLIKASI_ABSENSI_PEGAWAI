import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String gender = "Laki-laki";

  List<String> bidang = [
    "Bidang Pendataan",
    "Bidang Penagihan",
    "Bidang Pengawasan",
    "Bidang Pelayanan",
    "Bidang Teknologi Informasi"
  ];

  List<String> selectedBidang = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            alignment: Alignment.center,
            child: const Text("Register", style: TextStyle(fontSize: 24)),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [
                  TextField(decoration: const InputDecoration(labelText: "Nama")),
                  const SizedBox(height: 10),

                  TextField(decoration: const InputDecoration(labelText: "Email")),
                  const SizedBox(height: 10),

                  TextField(
                    obscureText: true,
                    decoration: const InputDecoration(labelText: "Password"),
                  ),

                  const SizedBox(height: 10),

                  // RADIO
                  const Text("Gender"),
                  Row(
                    children: [
                      Radio(
                        value: "Laki-laki",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                      const Text("Laki-laki"),

                      Radio(
                        value: "Perempuan",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                      const Text("Perempuan"),
                    ],
                  ),

                  const SizedBox(height: 10),

                  // CHIP
                  const Text("Bidang"),
                  Wrap(
                    spacing: 10,
                    children: bidang.map((b) {
                      final selected = selectedBidang.contains(b);
                      return FilterChip(
                        label: Text(b),
                        selected: selected,
                        onSelected: (value) {
                          setState(() {
                            if (value) {
                              selectedBidang.add(b);
                            } else {
                              selectedBidang.remove(b);
                            }
                          });
                        },
                      );
                    }).toList(),
                  ),

                  const SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {
                      // 👉 BALIK KE LOGIN
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    child: const Text("Register"),
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
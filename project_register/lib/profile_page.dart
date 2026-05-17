import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // ✅ CHECKBOX
  bool isActiveEmployee = true;

  // 🔘 RADIO BUTTON
  String employmentStatus = "Tetap";

  // 🔘 CHIP
  List<String> skills = [
    "Administrasi",
    "Manajemen Arsip",
    "Komunikasi",
  ];

  // 🔄 SWITCH
  bool darkMode = false;
  bool notificationActive = true;
  bool locationActive = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 🌙 BACKGROUND DARK MODE
      backgroundColor: darkMode ? Colors.black : Colors.grey[200],

      // 🔷 APPBAR
      appBar: AppBar(
        backgroundColor: darkMode ? Colors.black : Colors.grey[200],
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: darkMode ? Colors.white : Colors.black,
        ),
        centerTitle: true,
        title: Text(
          "Profil",
          style: TextStyle(
            color: darkMode ? Colors.white : Colors.black,
          ),
        ),
      ),

      // 🔳 BODY
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            // 👤 FOTO PROFIL
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
            ),

            const SizedBox(height: 10),

            // 👤 NAMA
            Text(
              "Aswin Cenglu",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: darkMode ? Colors.white : Colors.black,
              ),
            ),

            // 👤 JABATAN
            Text(
              "Sekretaris",
              style: TextStyle(
                color: darkMode ? Colors.grey[300] : Colors.grey[700],
              ),
            ),

            const SizedBox(height: 20),

            Divider(
              color: darkMode ? Colors.white : Colors.black,
            ),

            // 📧 EMAIL
            ListTile(
              leading: Icon(
                Icons.email,
                color: darkMode ? Colors.white : Colors.black,
              ),
              title: Text(
                "aswincenglu@gmail.com",
                style: TextStyle(
                  color: darkMode ? Colors.white : Colors.black,
                ),
              ),
            ),

            // 📱 TELEPON
            ListTile(
              leading: Icon(
                Icons.phone,
                color: darkMode ? Colors.white : Colors.black,
              ),
              title: Text(
                "081234567890",
                style: TextStyle(
                  color: darkMode ? Colors.white : Colors.black,
                ),
              ),
            ),

            Divider(
              color: darkMode ? Colors.white : Colors.black,
            ),

            // ======================
            // 🔄 SWITCH
            // ======================

            SwitchListTile(
              title: Text(
                "Mode Gelap",
                style: TextStyle(
                  color: darkMode ? Colors.white : Colors.black,
                ),
              ),
              subtitle: Text(
                "Aktifkan dark mode",
                style: TextStyle(
                  color: darkMode ? Colors.white70 : Colors.black54,
                ),
              ),
              value: darkMode,
              onChanged: (value) {
                setState(() {
                  darkMode = value;
                });
              },
            ),

            SwitchListTile(
              title: Text(
                "Notifikasi",
                style: TextStyle(
                  color: darkMode ? Colors.white : Colors.black,
                ),
              ),
              subtitle: Text(
                "Aktifkan notifikasi aplikasi",
                style: TextStyle(
                  color: darkMode ? Colors.white70 : Colors.black54,
                ),
              ),
              value: notificationActive,
              onChanged: (value) {
                setState(() {
                  notificationActive = value;
                });
              },
            ),

            SwitchListTile(
              title: Text(
                "Lokasi",
                style: TextStyle(
                  color: darkMode ? Colors.white : Colors.black,
                ),
              ),
              subtitle: Text(
                "Izinkan akses lokasi",
                style: TextStyle(
                  color: darkMode ? Colors.white70 : Colors.black54,
                ),
              ),
              value: locationActive,
              onChanged: (value) {
                setState(() {
                  locationActive = value;
                });
              },
            ),

            Divider(
              color: darkMode ? Colors.white : Colors.black,
            ),

            // ======================
            // ✅ CHECKBOX
            // ======================

            CheckboxListTile(
              title: Text(
                "Pegawai Aktif",
                style: TextStyle(
                  color: darkMode ? Colors.white : Colors.black,
                ),
              ),
              subtitle: Text(
                "Menandakan pegawai masih bekerja",
                style: TextStyle(
                  color: darkMode ? Colors.white70 : Colors.black54,
                ),
              ),
              value: isActiveEmployee,
              onChanged: (value) {
                setState(() {
                  isActiveEmployee = value!;
                });
              },
            ),

            // ======================
            // 🔘 RADIO BUTTON
            // ======================

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Status Kepegawaian",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: darkMode ? Colors.white : Colors.black,
                    ),
                  ),

                  RadioListTile(
                    title: Text(
                      "Tetap",
                      style: TextStyle(
                        color: darkMode ? Colors.white : Colors.black,
                      ),
                    ),
                    value: "Tetap",
                    groupValue: employmentStatus,
                    onChanged: (value) {
                      setState(() {
                        employmentStatus = value.toString();
                      });
                    },
                  ),

                  RadioListTile(
                    title: Text(
                      "Kontrak",
                      style: TextStyle(
                        color: darkMode ? Colors.white : Colors.black,
                      ),
                    ),
                    value: "Kontrak",
                    groupValue: employmentStatus,
                    onChanged: (value) {
                      setState(() {
                        employmentStatus = value.toString();
                      });
                    },
                  ),

                  RadioListTile(
                    title: Text(
                      "Magang",
                      style: TextStyle(
                        color: darkMode ? Colors.white : Colors.black,
                      ),
                    ),
                    value: "Magang",
                    groupValue: employmentStatus,
                    onChanged: (value) {
                      setState(() {
                        employmentStatus = value.toString();
                      });
                    },
                  ),
                ],
              ),
            ),

            // ======================
            // 🔘 CHIP
            // ======================

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Keahlian",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: darkMode ? Colors.white : Colors.black,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Wrap(
                    spacing: 8,
                    children: skills.map((skill) {
                      return Chip(
                        label: Text(skill),
                        backgroundColor: Colors.blue[100],
                        deleteIcon: const Icon(Icons.close),
                        onDeleted: () {
                          setState(() {
                            skills.remove(skill);
                          });
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),

            // 🔵 BUTTON LOGOUT
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},

                  child: const Text("Logout"),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
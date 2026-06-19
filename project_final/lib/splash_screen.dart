import 'dart:async';
import 'package:flutter/material.dart';
import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFF114DB8),
        child: Stack(
          children: [

            // Ornamen kiri atas
            Positioned(
              top: -40,
              left: -40,
              child: Transform.rotate(
                angle: -0.5,
                child: Container(
                  width: 150,
                  height: 150,
                  color: const Color(0xFF1A237E),
                ),
              ),
            ),

            // Ornamen kanan atas
            Positioned(
              top: 50,
              right: -50,
              child: Transform.rotate(
                angle: -0.5,
                child: Container(
                  width: 120,
                  height: 120,
                  color: const Color(0xFF283593),
                ),
              ),
            ),

            // Ornamen kiri bawah
            Positioned(
              bottom: -50,
              left: -50,
              child: Transform.rotate(
                angle: -0.5,
                child: Container(
                  width: 140,
                  height: 140,
                  color: const Color(0xFF283593),
                ),
              ),
            ),

            // Ornamen kanan bawah
            Positioned(
              bottom: -40,
              right: -40,
              child: Transform.rotate(
                angle: -0.5,
                child: Container(
                  width: 150,
                  height: 150,
                  color: const Color(0xFF1A237E),
                ),
              ),
            ),

            // Konten Tengah
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [

                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.school,
                      size: 50,
                      color: Color(0xFF114DB8),
                    ),
                  ),

                  SizedBox(height: 20),

                  Text(
                    "SMART ATTENDANCE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Sistem Absensi Mahasiswa",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),

                  SizedBox(height: 30),

                  CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
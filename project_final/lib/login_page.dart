import 'package:flutter/material.dart';
import 'home_page.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  void login() {
    String username = usernameController.text.trim();
    String password = passwordController.text.trim();

    if (username == "DEDEK NURLINA" && password == "12345") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Username atau Password Salah!")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          children: [
            // HEADER BIRU
            Container(
              height: 280,
              width: double.infinity,
              decoration: const BoxDecoration(color: Color(0xFF114DB8)),

              child: Stack(
                children: [
                  Positioned(
                    top: -40,
                    left: -40,
                    child: Transform.rotate(
                      angle: -0.5,
                      child: Container(
                        width: 140,
                        height: 140,
                        color: const Color(0xFF1A237E),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 20,
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

                  const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.school,
                            size: 40,
                            color: Color(0xFF114DB8),
                          ),
                        ),

                        SizedBox(height: 15),

                        Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 5),

                        Text(
                          "Welcome Back",
                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Transform.translate(
              offset: const Offset(0, -40),

              child: Container(
                width: double.infinity,

                margin: const EdgeInsets.symmetric(horizontal: 20),

                padding: const EdgeInsets.all(25),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),

                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade300, blurRadius: 10),
                  ],
                ),

                child: Column(
                  children: [
                    TextField(
                      controller: usernameController,

                      decoration: InputDecoration(
                        labelText: "Username",
                        prefixIcon: const Icon(Icons.person),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    TextField(
                      controller: passwordController,

                      obscureText: true,

                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: const Icon(Icons.lock),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    Align(
                      alignment: Alignment.centerRight,

                      child: TextButton(
                        onPressed: () {},

                        child: const Text("Forgot Password?"),
                      ),
                    ),

                    const SizedBox(height: 15),

                    SizedBox(
                      width: double.infinity,
                      height: 50,

                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF114DB8),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),

                        onPressed: login,

                        child: const Text(
                          "LOGIN",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        const Text("Belum punya akun? "),

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,

                              MaterialPageRoute(
                                builder: (_) => const RegisterPage(),
                              ),
                            );
                          },

                          child: const Text(
                            "Daftar",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

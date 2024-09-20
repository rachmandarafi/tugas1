import 'package:flutter/material.dart';
import 'package:tugas1/login.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _logout() {
    // Logika untuk kembali ke halaman login, bisa menggunakan Navigator.pushReplacement
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) =>
              const LoginApp()), // Pastikan kamu sudah punya LoginScreen
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed:
                _logout, // Fungsi untuk logout dan kembali ke login screen
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(flex: 1),
            Text(
              'Logout tekan tombol di kanan atas',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 121, 121, 121)),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}

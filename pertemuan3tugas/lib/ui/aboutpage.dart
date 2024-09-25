import 'package:flutter/material.dart';
import 'package:pertemuan3tugas/ui/sidemenu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      drawer: const Sidemenu(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 0, 255, 251),
              Color.fromARGB(255, 255, 255, 255)
            ],
          ),
        ),
        child: const SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'About',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Ini adalah halaman About Praktikum Pemrograman Mobile Tugas 3',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                // Tambahkan informasi lebih lanjut tentang aplikasi atau pengembang di sini
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 244, 177, 199),
        title: Text("About Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
              'Aplikasi ini dibuat menggunakan Flutter'
              'Fitur yang digunakan dalam aplikasi ini adalah:\n'
              '- MaterialApp\n'
              '- Named Routes\n'
              '- Navigator.pushNamed()\n'
              ' - Navigator.pop()\n'
              ' Aplikasi ini bertujuan untuk memahami\n'
              'konsep perpindahan halaman pada Flutter.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
            ElevatedButton.icon(
                onPressed: () {Navigator.pushNamed(context, '/contact');},
                label: Text("Ke Halaman Contact", style: TextStyle(color: Color(0xFFFFFFFF))),
                icon: Icon(Icons.info, color: Color(0xFFFFFFFF)),
                style: ButtonStyle(
                 backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 248, 107, 171)),
                 
              ),
              ),

        SizedBox(height: 20),
        ElevatedButton.icon(
                onPressed: () {Navigator.pop(context, '/home');},
                label: Text("Kembali Ke Home", style: TextStyle(color: Color(0xFFFFFFFF))),
                icon: Icon(Icons.info, color: Color(0xFFFFFFFF)),
                style: ButtonStyle(
                 backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 248, 107, 171)),
                 
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
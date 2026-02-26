import 'package:flutter/material.dart';

class HomeNavigasiPage extends StatelessWidget {
  const HomeNavigasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Selamat datang di Aplikasi Navigasi Sederhana.\n'
                'Aplikasi ini dibuat untuk mempelajari penggunaan '
                'Named Routes dan Navigator pada Flutter.\n'
                'Silakan pilih menu untuk berpindah halaman.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 30),

               ElevatedButton.icon(
                onPressed: () {Navigator.pushNamed(context, '/about');},
                label: Text("Ke Halaman About", style: TextStyle(color: Color(0xFFFFFFFF))),
                icon: Icon(Icons.home, color: Color(0xFFFFFFFF)),
                style: ButtonStyle(
                 backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 154, 151, 152)),
                 
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
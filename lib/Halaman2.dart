import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String nama;
  final String deskripsi;

  const DetailPage({
    super.key,
    required this.nama,
    required this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Page"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 197, 150, 206),
        titleTextStyle: TextStyle(color: Colors.white),
      ),
      body: Center(
        // padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          // <-- supaya kalau teks panjang tidak overflow
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Nama: $nama", style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 10),

              const Text(
                "Tentang Saya:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),

              Text(deskripsi, style: const TextStyle(fontSize: 16)),

              const SizedBox(height: 50),

              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Kembali"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
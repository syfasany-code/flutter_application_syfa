import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil Saya"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              // Foto Profil
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("images/yasyfa.jpg"),
              ),
              const SizedBox(height: 15),
              // Nama Lengkap
              const Text(
                "Yasyfa Hdayanti",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              // Deskripsi Singkat
              const Text(
                "Siswa SMK YPC Tasikmalaya",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              // Tombol Aksi (CALL, ROUTE, SHARE)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.call, color: Colors.blue),
                      ),
                      const Text("Call"),
                    ],
                  ),
                  const SizedBox(width: 40),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.location_on, color: Colors.blue),
                      ),
                      const Text("Route"),
                    ],
                  ),
                  const SizedBox(width: 40),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.share, color: Colors.blue),
                      ),
                      const Text("Share"),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Contoh tambahan widget (Container)
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "Halo, ini profil saya!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
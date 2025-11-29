import 'package:flutter/material.dart';
import 'halaman-detail.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // FOTO PROFIL
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/yasyfa.jpg'),
            ),

            const SizedBox(height: 15),

            // NAMA LENGKAP
            const Text(
              "Yasyfa Hidayanti",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            // DESKRIPSI
            const Text(
              "Hobi: Ngoding • Kelas XI RPL 2 • Jurusan RPL",
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            // Tombol CALL, ROUTE, SHARE
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Icon(Icons.call, size: 30),
                    Text("CALL"),
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.location_on, size: 30),
                    Text("ROUTE"),
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.share, size: 30),
                    Text("SHARE"),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 30),

            // TOMBOL LIHAT DETAIL
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HalamanDetail(
                      nama: "Yasyfa Hidayanti",
                      biodata: "• Nama: Yasyfa Hidayanti\n"
                          "• Kelas: XI RPL 2\n"
                          "• Minat: Mobile Programming\n"
                          "• Hobi: Ngoding & Editing",
                    ),
                  ),
                );
              },
              child: const Text("Lihat Detail"),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class HalamanDetail extends StatelessWidget {
  final String nama;
  final String biodata;

  const HalamanDetail({
    super.key,
    required this.nama,
    required this.biodata,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nama,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            // INFORMASI BIODATA
            Text(
              biodata,
              style: const TextStyle(fontSize: 16),
            ),

            const Spacer(),

            // Tombol KEMBALI
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Kembali"),
            ),
          ],
        ),
      ),
    );
  }
}
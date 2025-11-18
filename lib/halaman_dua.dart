import 'package:flutter/material.dart';
import 'package:flutter_application_syfa/halaman_tiga.dart';

class HalamanDua extends StatelessWidget {
  final String nama;
  final String alamat;
  const HalamanDua({super.key, required this.nama, required this.alamat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman 2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hallo, $nama!"),
            SizedBox(height: 20),
            Text("Alamat kamu di: $alamat"),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Kembali Ke Halaman Sebelumnya'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HalamanTiga()),
                );
              },
              child: Text('Ke Halaman Tiga'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_syfa/halaman_dua.dart';
import 'package:flutter_application_syfa/halaman_tiga.dart';

class LatihanNavigator extends StatelessWidget {
  const LatihanNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    final String nama = 'Yasyfa Hidayanti';
    final String alamat = 'Jl.Cogrek No 02';

    return Scaffold(
      appBar: AppBar(title: Text('Halaman 1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        HalamanDua(nama: nama, alamat: alamat),
                  ),
                );
              },
              child: Text('Pergi Ke Halaman Kedua'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HalamanTiga()),
                );
              },
              child: Text('Pergi Ke Halaman Ke Tiga'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_syfa/halaman_tiga.dart';

class HalamanDua extends StatelessWidget {
  const HalamanDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman 2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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

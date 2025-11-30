import 'package:flutter/material.dart';
import 'Halaman2.dart';

class Skill extends StatelessWidget {
  final String nama = 'Yasyfa Hidayanti';
  final String deskrpsi = 'Hobi: Ngoding ~~ Kelas:XI RPL 2 ~~ Jurusan: Rpl';

  const Skill({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0, 240, 213, 243),
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/yasyfa.jpg'),
            ),

            SizedBox(height: 20),
            
            Text(
              nama,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            Text(
              deskrpsi,
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(onPressed: () {}, label: const Text("Call"), icon: const Icon(Icons.call)),
                ElevatedButton.icon(onPressed: () {}, label: const Text("Route"), icon: const Icon(Icons.route)),
                ElevatedButton.icon(onPressed: () {}, label: const Text("Share"), icon: const Icon(Icons.share)),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(nama: nama,deskripsi: deskrpsi)));
              }, child: Text("Lihat Detail")),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  //Controller untuk mengambil input daari textflied
  TextEditingController namaController = TextEditingController();

  //Menyimpan hasil yang akan ditampilkan
  String hasil = "";

  //fungsi yang dijalankan saat tombol ditekan
  void tampilkanNama() {
    if (namaController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Nama tidak boleh kosong"),
          ),
      );
    } else {
      setState(() {
        hasil = "Halo, ${namaController.text}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input & Interaksi"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            // Input teks nama pengguna
            TextField(
              controller: namaController,
              decoration: const InputDecoration(
                labelText: "Masukkan Nama",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 16),

            //Tombol untuk memproses input
            ElevatedButton(
              onPressed: tampilkanNama, 
              child: const Text("Tampilkan"),
              ),
             
             const SizedBox(height: 16),

             //MEnampilkan hasil input
             Text(
              hasil,
              style: const TextStyle(fontSize: 18),
             ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class TampilBiodataPage extends StatelessWidget {
  final String nama;
  final String jenisKelamin;
  final String umur;
  final String email;
  final String alamat;
  final String kelas;
  final List<String> hobi;

  const TampilBiodataPage({
    super.key,
    required this.nama,
    required this.jenisKelamin,
    required this.umur,
    required this.email,
    required this.alamat,
    required this.kelas,
    required this.hobi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tampil Biodata",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [

              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Nama"),
                subtitle: Text(nama),
              ),
              const Divider(),

              ListTile(
                leading: const Icon(Icons.wc),
                title: const Text("Jenis Kelamin"),
                subtitle: Text(jenisKelamin),
              ),
              const Divider(),

               ListTile(
                leading: const Icon(Icons.cake),
                title: const Text("Umur"),
                subtitle: Text(umur),
              ),
              const Divider(),

               ListTile(
                leading: const Icon(Icons.email),
                title: const Text("Email"),
                subtitle: Text(email),
              ),
              const Divider(),

               ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Alamat"),
                subtitle: Text(alamat),
              ),
              const Divider(),

               ListTile(
                leading: const Icon(Icons.school),
                title: const Text("Kelas"),
                subtitle: Text(kelas),
              ),
              const Divider(),

               ListTile(
                leading: const Icon(Icons.favorite),
                title: const Text("Hobi"),
                subtitle: Text(hobi.join(", ")),
              ),
              
              const SizedBox(height: 20),

              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text(
                    "Kembali",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
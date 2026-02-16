import 'package:flutter/material.dart';
import 'tampil_biodata.dart';

class FormBiodataPage extends StatefulWidget {
  const FormBiodataPage({super.key});

  @override
  State<FormBiodataPage> createState() => _FormBiodataPageState();
}

class _FormBiodataPageState extends State<FormBiodataPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController namaController = TextEditingController();
  TextEditingController umurController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController alamatController = TextEditingController();

  String jenisKelamin = "";
  String? kelas; // nullable

  bool hobiCoding = false;
  bool hobiGaming = false;
  bool hobiMembaca = false;

  void simpanData() {
    if (_formKey.currentState!.validate() &&
        jenisKelamin.isNotEmpty &&
        kelas != null &&
        (hobiCoding || hobiGaming || hobiMembaca)) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TampilBiodataPage(
            nama: namaController.text,
            jenisKelamin: jenisKelamin,
            umur: umurController.text,
            email: emailController.text,
            alamat: alamatController.text,
            kelas: kelas!,
            hobi: [
              if (hobiCoding) "Coding",
              if (hobiGaming) "Gaming",
              if (hobiMembaca) "Membaca",
            ],
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Lengkapi seluruh biodata dengan benar"),
        ),
      );
    }
  }

  void resetForm() {
    setState(() {
      namaController.clear();
      umurController.clear();
      emailController.clear();
      alamatController.clear();
      jenisKelamin = "";
      kelas = null;
      hobiCoding = false;
      hobiGaming = false;
      hobiMembaca = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Biodata", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: namaController,
                decoration: const InputDecoration(
                  labelText: "Nama Lengkap",
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value == null || value.isEmpty ? "Nama wajib diisi" : null,
              ),

              const SizedBox(height: 12),

              const Text("Jenis Kelamin"),
              RadioListTile(
                title: const Text("Laki - Laki"),
                value: "Laki - Laki",
                groupValue: jenisKelamin,
                onChanged: (value) {
                  setState(() => jenisKelamin = value!);
                },
              ),
              RadioListTile(
                title: const Text("Perempuan"),
                value: "Perempuan",
                groupValue: jenisKelamin,
                onChanged: (value) {
                  setState(() => jenisKelamin = value!);
                },
              ),

              const SizedBox(height: 12),

              TextFormField(
                controller: umurController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Umur",
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value == null || int.tryParse(value) == null
                        ? "Umur harus angka"
                        : null,
              ),

              const SizedBox(height: 12),

              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value == null || !value.contains("@")
                        ? "Email tidak valid"
                        : null,
              ),

              const SizedBox(height: 12),

              TextFormField(
                controller: alamatController,
                maxLines: 2,
                decoration: const InputDecoration(
                  labelText: "Alamat",
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value == null || value.isEmpty
                        ? "Alamat wajib diisi"
                        : null,
              ),

              const SizedBox(height: 16),

              const Text("Kelas"),
              DropdownButtonFormField<String>(
                value: kelas,
                items: const [
                  DropdownMenuItem(
                      value: "XI RPL 1", child: Text("XI RPL 1")),
                  DropdownMenuItem(
                      value: "XI RPL 2", child: Text("XI RPL 2")),
                  DropdownMenuItem(
                      value: "XI PPLG", child: Text("XI PPLG")),
                ],
                onChanged: (value) {
                  setState(() {
                    kelas = value;
                  });
                },
                validator: (value) =>
                    value == null ? "Kelas wajib dipilih" : null,
              ),

              const SizedBox(height: 16),

              const Text("Hobi"),
              CheckboxListTile(
                title: const Text("Coding"),
                value: hobiCoding,
                onChanged: (value) {
                  setState(() => hobiCoding = value!);
                },
              ),
              CheckboxListTile(
                title: const Text("Gaming"),
                value: hobiGaming,
                onChanged: (value) {
                  setState(() => hobiGaming = value!);
                },
              ),
              CheckboxListTile(
                title: const Text("Membaca"),
                value: hobiMembaca,
                onChanged: (value) {
                  setState(() => hobiMembaca = value!);
                },
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: simpanData,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text("Simpan",
                        style: TextStyle(color: Colors.white)),
                  ),
                  OutlinedButton(
                    onPressed: resetForm,
                    child: const Text("Reset"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_syfa/latihanskill.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Latihan Skill",
      home: HalamanUtama(), // halaman utama
    );
  }
}

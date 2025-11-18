import 'package:flutter/material.dart';

class Latihanstate extends StatefulWidget {
  const Latihanstate({super.key});

  @override
  State<Latihanstate> createState() => _LatihanstateState();
}

class _LatihanstateState extends State<Latihanstate> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Latihan State')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nilai Counter saat ini: $counter'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: incrementCounter,
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 249, 129, 169),
                  foregroundColor: Colors.white),
              child: const Text('Tambah Counter'),
            ),
          ],
        ),
      ),
    );
  }
}

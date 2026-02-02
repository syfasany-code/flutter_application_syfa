import 'package:flutter/material.dart';

class Responsif extends StatelessWidget {
  const Responsif({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsiv'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              color: Colors.pink.shade100,
              child: const Center(
                child: Text(
                  "Header",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Color(0xFFE0BBE4),
                      child: const Center(child: Text("Menu")),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Color(0xFFFFF1D0),
                      child: const Center(child: Text("Konten")),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
              height: 50,
              color: Colors.pink.shade50,
            ),
           ),
           Flexible(
              flex: 1,
              child: Container(
              height: 50,
              color: Colors.pink.shade100,
            ),
           ),
           Flexible(
              flex: 1,
              child: Container(
              height: 50,
              color: Colors.pink.shade200,
            ),
           ),
          ],
        ),
      ),
    );
  }
}
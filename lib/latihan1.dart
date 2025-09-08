import 'package:flutter/material.dart';

void main() {
  runApp(const Latihan1());
}

class Latihan1 extends StatelessWidget {
  const Latihan1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'List dan GridView',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List dan GridView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Daftar menu aplikasi (ListView Vertikal)
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Menu Aplikasi:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ListTile(
                  leading: Icon(Icons.map),
                  title: Text("Map"),
                ),
                ListTile(
                  leading: Icon(Icons.album),
                  title: Text("Album"),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("Phone"),
                ),
              ],
            ),

            // Daftar warna horizontal
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Warna Horizontal:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(width: 100, color: Colors.red),
                  Container(width: 100, color: Colors.blue),
                  Container(width: 100, color: Colors.green),
                  Container(width: 100, color: Colors.yellow),
                  Container(width: 100, color: Colors.orange),
                ],
              ),
            ),

            // GridView
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Grid Item:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(6, (index) {
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "Item $index",
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Color _textColorForIndex(int index) {
    final colors = [Colors.red, Colors.blue, Colors.black];
    return colors[(index ~/ 10) % colors.length];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tugas")),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // atur tinggi area atas (bisa diubah sesuai kebutuhan)
          final topAreaHeight = constraints.maxHeight * 0.45;

          return Column(
            children: [
              // Area 4 Card: kita beri HEIGHT yang terikat lalu bagi rata dengan Expanded
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(height: topAreaHeight),
                child: Column(
                  // Column di sini memiliki tinggi tetap = topAreaHeight,
                  // sehingga Expanded pada child akan bekerja dengan benar.
                  children: [
                    // tiap card mengambil 1 bagian tinggi dari area
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: SizedBox.expand(
                          child:
                              ColoredCard(color: Colors.lightBlue, text: "Item 1"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: SizedBox.expand(
                          child: ColoredCard(color: Colors.green, text: "Item 2"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: SizedBox.expand(
                          child: ColoredCard(color: Colors.yellow, text: "Item 3"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: SizedBox.expand(
                          child:
                              ColoredCard(color: Colors.orange, text: "Item 4"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Sisa ruang -> List panjang 100 item
              Expanded(
                child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(Icons.star),
                      title: Text(
                        "Item ${index + 1}",
                        style: TextStyle(color: _textColorForIndex(index)),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class ColoredCard extends StatelessWidget {
  final Color color;
  final String text;

  const ColoredCard({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    // Card akan mengisi parent karena kita bungkus dengan SizedBox.expand di pemanggil
    return Card(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            // text color otomatis hitam; ubah jika perlu kontras
          ),
        ),
      ),
    );
  }
}

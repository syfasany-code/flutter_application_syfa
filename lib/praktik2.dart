import 'package:flutter/material.dart';
import 'package:flutter_application_syfa/praktik2.dart';

class praktik extends StatelessWidget {
  const praktik({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman 1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Yasyfa Hidayanti',
              style: TextStyle(fontSize: 20, color: Colors.black) ,
            ),
            ElevatedButton(
              onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute
                (builder: (context)
                => praktik2()),
              );
              },

            child: Text('Lihat Detail'),),
          ],
        ),
      ),
    );
  }
}

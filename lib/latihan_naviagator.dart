import 'package:flutter/material.dart';

class LatihanNaviagator extends StatelessWidget {
  const LatihanNaviagator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman 1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}
             Navigator.push(
              context,
              MaterialPageRoute
              (builder: (context)
               => HalamanDua()),
            );
  },
  child: Text(data),
          ],
        ),
      ),
    );
  }
}
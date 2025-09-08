import 'package:flutter/material.dart';

class Layouthorizontal extends StatelessWidget {
  const Layouthorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('istViewHorizontal')),
      body: SizedBox(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(width: 160, color: Colors.pink),
            Container(width: 160, color: Colors.blue),
            Container(width: 160, color: Colors.white),
            Container(width: 160, color: Colors.black),
            Container(width: 160, color: Colors.red),
            Container(width: 160, color: Colors.green),

          ],
        ),
      ),
    );
  }
}
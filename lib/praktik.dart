import 'package:flutter/material.dart';

class Praktik2 extends StatelessWidget {
  const Praktik2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman 2')),
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child: ClipRRect(
               borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'images/yasyfa.jpg',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
            SizedBox(height: 20,),
          Text("Yasyfa Hidayanti", 
          style: TextStyle(fontSize: 16, color: Color(0xFF111111), fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          Text("Pengembangan Perangkat Lunak Dan Gim", 
          style: TextStyle(fontSize: 6, color: Color(0xFF44444)),
          ),
          SizedBox(height: 9),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              ElevatedButton(
                onPressed:() {
                  Navigator.pop(context);
              }, 
              child: Text('Kembali'),
              )
            ],
          )
        ],
      )
    );
  }
}
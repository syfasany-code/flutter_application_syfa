import 'package:flutter/material.dart';

class LayoutWidget  extends StatelessWidget {
  const LayoutWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('layout yasyfa ', style: TextStyle(
          color: Colors.pink.shade200
        ),
        ),
        backgroundColor: Colors.black12,
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Image.asset('images/smkypc.png', width: 200,),
          SizedBox(height: 10),
          Text('SMK YPC Tasikmalaya',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Pengembangan Perangkat Lunak Dan Gim',
            style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [Icon(Icons.call),Text('Call')]),
                Column(children: [Icon(Icons.map),Text('Route')]),
                Column(children: [Icon(Icons.share),Text('Share')]),
              ],
            )
        ],
      ),
    );
  }
}
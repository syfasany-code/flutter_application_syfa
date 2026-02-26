import 'package:flutter/material.dart';

class HomePageLoginNavigation extends StatelessWidget {
  const HomePageLoginNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),      
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/');
          },
          child: Text("Logout"),
        ),
      ),
    );
  }
}
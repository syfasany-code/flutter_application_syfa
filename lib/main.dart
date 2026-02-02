import 'package:flutter/material.dart';
import 'package:flutter_application_syfa/home_page.dart';
import 'package:flutter_application_syfa/providers/counter_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: const MainApp(),
    )
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Latihan',
      home: HomePage()
    );
  }
}

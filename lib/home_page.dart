import 'package:flutter/material.dart';
import 'package:flutter_application_syfa/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Manajeemen State Provider'),
      ),
      body: Center(
        child: Text(
          'Nilai Counter: ${counter.count}',
          style: const TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: counter.increment,
      child: const Icon(Icons.add),
      ),
    ); 
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_application_syfa/form_biodata.dart';

// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (_) => CounterProvider(),
//       child: const MainApp(),
//     )
//   );
// }

void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Latihan',
      home: FormBiodataPage()
    );
  }
}

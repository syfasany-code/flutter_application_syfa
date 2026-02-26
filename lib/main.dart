import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page_login_navigation.dart';

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
      title: 'Named Routes App',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home':(context) => HomePageLoginNavigation(),
      },
    );
  }
}

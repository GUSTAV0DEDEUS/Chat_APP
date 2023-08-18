import 'package:flutter/material.dart';
import 'package:my_app/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)
            .copyWith(background: Colors.grey[100], primary: Colors.white),
      ),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}


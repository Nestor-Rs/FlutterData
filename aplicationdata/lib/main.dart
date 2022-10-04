import 'package:aplicationdata/page/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Mi primera app",
        theme: ThemeData(primarySwatch: Colors.amber),
        home: const HomePage(),
        );
  }
}

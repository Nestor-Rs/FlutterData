import 'package:flutter/material.dart';
import 'package:aplicationdata/examples/counter/counter_page_state.dart';

class MyAppCounter extends StatelessWidget {
  const MyAppCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Mi primera app",
        theme: ThemeData(primarySwatch: Colors.amber),
        home: const HomePage(),
        );
  }
}
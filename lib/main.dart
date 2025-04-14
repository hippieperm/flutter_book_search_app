import 'package:flutter/material.dart';
import 'ui/detail/detail_page.dart';
import 'ui/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: const DetailPage(),
      // home: HomePage(),
    );
  }
}

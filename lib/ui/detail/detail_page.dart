import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('해리포터의 마법사의 '),
      ),
      body: const Text('DetailPage'),
    );
  }
}

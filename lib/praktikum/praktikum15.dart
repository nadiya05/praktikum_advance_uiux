import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Praktikum 15')),
      body: const Center(
        child: Text('Isi kode praktikum 15'),
      ),
    );
  }
}
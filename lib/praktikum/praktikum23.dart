import 'package:flutter/material.dart';

class UiStatePage extends StatelessWidget {
  const UiStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Praktikum 23')),
      body: const Center(
        child: Text('Isi kode praktikum 23'),
      ),
    );
  }
}
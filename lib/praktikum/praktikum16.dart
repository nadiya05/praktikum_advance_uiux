import 'package:flutter/material.dart';

class SkeletonPage extends StatelessWidget {
  const SkeletonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Praktikum 16')),
      body: const Center(
        child: Text('Isi kode praktikum 16'),
      ),
    );
  }
}
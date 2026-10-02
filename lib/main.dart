import 'package:flutter/material.dart';

// Import semua file praktikum dari folder praktikum/
import 'praktikum/praktikum1.dart';
import 'praktikum/praktikum2.dart';
import 'praktikum/praktikum3.dart';
import 'praktikum/praktikum4.dart';
import 'praktikum/praktikum5.dart';
import 'praktikum/praktikum6.dart';
import 'praktikum/praktikum7.dart';
import 'praktikum/praktikum8.dart';
import 'praktikum/praktikum9.dart';
import 'praktikum/praktikum10.dart';
import 'praktikum/praktikum11.dart';
import 'praktikum/praktikum12.dart';
import 'praktikum/praktikum13.dart';
import 'praktikum/praktikum14.dart';
import 'praktikum/praktikum15.dart';
import 'praktikum/praktikum16.dart';
import 'praktikum/praktikum17.dart';
import 'praktikum/praktikum18.dart';
import 'praktikum/praktikum19.dart';
import 'praktikum/praktikum20.dart';
import 'praktikum/praktikum21.dart';
import 'praktikum/praktikum22.dart';
import 'praktikum/praktikum23.dart';
import 'praktikum/praktikum24.dart';
import 'praktikum/praktikum25.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Advance UI/UX Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const DaftarPraktikumPage(),
    );
  }
}

class DaftarPraktikumPage extends StatelessWidget {
  const DaftarPraktikumPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar navigasi ke 25 Praktikum
    final List<Map<String, dynamic>> praktikumList = [
      {'title': 'Praktikum 1', 'desc': 'Material 3 Explorer', 'page': const Praktikum1Screen()},
      {'title': 'Praktikum 2', 'desc': 'Advanced Layout', 'page': const Praktikum2Screen()},
      {'title': 'Praktikum 3', 'desc': 'Materi Praktikum 3', 'page': const Praktikum3Screen()},
      {'title': 'Praktikum 4', 'desc': 'Materi Praktikum 4', 'page': const Praktikum4Screen()},
      {'title': 'Praktikum 5', 'desc': 'Materi Praktikum 5', 'page': const Praktikum5Screen()},
      {'title': 'Praktikum 6', 'desc': 'Materi Praktikum 6', 'page': const Praktikum6Screen()},
      {'title': 'Praktikum 7', 'desc': 'Materi Praktikum 7', 'page': const Praktikum7Screen()},
      {'title': 'Praktikum 8', 'desc': 'Materi Praktikum 8', 'page': const Praktikum8Screen()},
      {'title': 'Praktikum 9', 'desc': 'Materi Praktikum 9', 'page': const Praktikum9Screen()},
      {'title': 'Praktikum 10', 'desc': 'Materi Praktikum 10', 'page': const Praktikum10Screen()},
      {'title': 'Praktikum 11', 'desc': 'Materi Praktikum 11', 'page': const Praktikum11Screen()},
      {'title': 'Praktikum 12', 'desc': 'Materi Praktikum 12', 'page': const Praktikum12Screen()},
      {'title': 'Praktikum 13', 'desc': 'Materi Praktikum 13', 'page': const Praktikum13Screen()},
      {'title': 'Praktikum 14', 'desc': 'Materi Praktikum 14', 'page': const Praktikum14Screen()},
      {'title': 'Praktikum 15', 'desc': 'Materi Praktikum 15', 'page': const Praktikum15Screen()},
      {'title': 'Praktikum 16', 'desc': 'Materi Praktikum 16', 'page': const Praktikum16Screen()},
      {'title': 'Praktikum 17', 'desc': 'Materi Praktikum 17', 'page': const Praktikum17Screen()},
      {'title': 'Praktikum 18', 'desc': 'Materi Praktikum 18', 'page': const Praktikum18Screen()},
      {'title': 'Praktikum 19', 'desc': 'Materi Praktikum 19', 'page': const Praktikum19Screen()},
      {'title': 'Praktikum 20', 'desc': 'Materi Praktikum 20', 'page': const Praktikum20Screen()},
      {'title': 'Praktikum 21', 'desc': 'Materi Praktikum 21', 'page': const Praktikum21Screen()},
      {'title': 'Praktikum 22', 'desc': 'Materi Praktikum 22', 'page': const Praktikum22Screen()},
      {'title': 'Praktikum 23', 'desc': 'Materi Praktikum 23', 'page': const Praktikum23Screen()},
      {'title': 'Praktikum 24', 'desc': 'Materi Praktikum 24', 'page': const Praktikum24Screen()},
      {'title': 'Praktikum 25', 'desc': 'Materi Praktikum 25', 'page': const Praktikum25Screen()},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Utama Advance UI/UX (1-25)'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: praktikumList.length,
        itemBuilder: (context, index) {
          final item = praktikumList[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: ListTile(
              leading: CircleAvatar(
                child: Text('${index + 1}'),
              ),
              title: Text(item['title'], style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(item['desc']),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => item['page']),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
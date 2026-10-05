import 'package:flutter/material.dart';

// Import seluruh file praktikum menggunakan alias (as p1, as p2, dst.)
// agar file praktikum asli yang memiliki void main() tidak bentrok.
import 'praktikum/praktikum1.dart' as p1;
import 'praktikum/praktikum2.dart' as p2;
import 'praktikum/praktikum3.dart' as p3;
import 'praktikum/praktikum4.dart' as p4;
import 'praktikum/praktikum5.dart' as p5;
import 'praktikum/praktikum6.dart' as p6;
import 'praktikum/praktikum7.dart' as p7;
import 'praktikum/praktikum8.dart' as p8;
import 'praktikum/praktikum9.dart' as p9;
import 'praktikum/praktikum10.dart' as p10;
import 'praktikum/praktikum11.dart' as p11;
import 'praktikum/praktikum12.dart' as p12;
import 'praktikum/praktikum13.dart' as p13;
import 'praktikum/praktikum14.dart' as p14;
import 'praktikum/praktikum15.dart' as p15;
import 'praktikum/praktikum16.dart' as p16;
import 'praktikum/praktikum17.dart' as p17;
import 'praktikum/praktikum18.dart' as p18;
import 'praktikum/praktikum19.dart' as p19;
import 'praktikum/praktikum20.dart' as p20;
import 'praktikum/praktikum21.dart' as p21;
import 'praktikum/praktikum22.dart' as p22;
import 'praktikum/praktikum23.dart' as p23;
import 'praktikum/praktikum24.dart' as p24;
import 'praktikum/praktikum25.dart' as p25;

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
    final List<Map<String, dynamic>> praktikumList = [
      {'title': 'Praktikum 1', 'desc': 'Material 3 Explorer', 'builder': (context) => const p1.MaterialExplorerPage()},
      {'title': 'Praktikum 2', 'desc': 'Advanced Layout', 'builder': (context) => const p2.LayoutPage()},
      {'title': 'Praktikum 3', 'desc': 'Responsive UI', 'builder': (context) => const p3.ResponsivePage()},
      {'title': 'Praktikum 4', 'desc': 'Adaptive UI', 'builder': (context) => const p4.AdaptivePage()},
      {'title': 'Praktikum 5', 'desc': 'Sliver UI', 'builder': (context) => const p5.SliverPage()},
      {'title': 'Praktikum 6', 'desc': 'Feedback UI', 'builder': (context) => const p6.FeedbackPage()},
      {'title': 'Praktikum 7', 'desc': 'Implicit Animation', 'builder': (context) => const p7.AnimationPage()},
      {'title': 'Praktikum 8', 'desc': 'Explicit Animation', 'builder': (context) => const p8.ExplicitAnimationPage()},
      {'title': 'Praktikum 9', 'desc': 'Materi Praktikum 9', 'builder': (context) => const p9.CurvePage()},
      {'title': 'Praktikum 10', 'desc': 'Materi Praktikum 10', 'builder': (context) => const p10.TransitionPage()},
      {'title': 'Praktikum 11', 'desc': 'Materi Praktikum 11', 'builder': (context) => const p11.HeroListPage()},
      {'title': 'Praktikum 12', 'desc': 'Materi Praktikum 12', 'builder': (context) => const p12.GesturePage()},
      {'title': 'Praktikum 13', 'desc': 'Materi Praktikum 13', 'builder': (context) => const p13.InteractivePage()},
      {'title': 'Praktikum 14', 'desc': 'Materi Praktikum 14', 'builder': (context) => const p14.FormPage()},
      {'title': 'Praktikum 15', 'desc': 'Materi Praktikum 15', 'builder': (context) => const p15.LoadingPage()},
      {'title': 'Praktikum 16', 'desc': 'Materi Praktikum 16', 'builder': (context) => const p16.SkeletonPage()},
      // Mengubah _MyAppState (private) menjadi public widget utama (misal: MyApp atau CustomStatePage) di file praktikum17.dart
      {'title': 'Praktikum 17', 'desc': 'Materi Praktikum 17', 'builder': (context) => const p17.MyApp()},
      {'title': 'Praktikum 18', 'desc': 'Materi Praktikum 18', 'builder': (context) => const p18.CustomWidgetPage()},
      {'title': 'Praktikum 19', 'desc': 'Materi Praktikum 19', 'builder': (context) => const p19.PainterPage()},
      {'title': 'Praktikum 20', 'desc': 'Materi Praktikum 20', 'builder': (context) => const p20.VisualPage()},
      {'title': 'Praktikum 21', 'desc': 'Materi Praktikum 21', 'builder': (context) => const p21.TransformPage()},
      {'title': 'Praktikum 22', 'desc': 'Materi Praktikum 22', 'builder': (context) => const p22.AccessibilityPage()},
      {'title': 'Praktikum 23', 'desc': 'Materi Praktikum 23', 'builder': (context) => const p23.UiStatePage()},
      {'title': 'Praktikum 24', 'desc': 'Materi Praktikum 24', 'builder': (context) => const p24.MicroInteractionPage()},
      {'title': 'Praktikum 25', 'desc': 'Materi Praktikum 25', 'builder': (context) => const p25.WidgetGalleryPage()},
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
                  MaterialPageRoute(builder: item['builder']),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
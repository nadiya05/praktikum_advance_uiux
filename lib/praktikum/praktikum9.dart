import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.teal,
      ),
      home: const CurvePage(),
    );
  }
}

class CurvePage extends StatefulWidget {
  const CurvePage({super.key});

  @override
  State<CurvePage> createState() => _CurvePageState();
}

class _CurvePageState extends State<CurvePage> {
  bool active = false;
  Curve selectedCurve = Curves.easeInOut;

  final curves = <String, Curve>{
    'easeInOut': Curves.easeInOut,
    'easeIn': Curves.easeIn,
    'easeOut': Curves.easeOut,
    'bounceOut': Curves.bounceOut,
    'elasticOut': Curves.elasticOut,
    'fastOutSlowIn': Curves.fastOutSlowIn,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Curves'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              value: curves.entries
                  .firstWhere(
                    (entry) => entry.value == selectedCurve,
                  )
                  .key,
              decoration: const InputDecoration(
                labelText: 'Animation Curve',
                border: OutlineInputBorder(),
              ),
              items: curves.keys
                  .map(
                    (name) => DropdownMenuItem(
                      value: name,
                      child: Text(name),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                if (value == null) return;

                setState(() {
                  selectedCurve = curves[value]!;
                });
              },
            ),
            const SizedBox(height: 50),
            Align(
              alignment: active
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: AnimatedContainer(
                duration: const Duration(seconds: 2),
                curve: selectedCurve,
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  color: Colors.teal,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            const Spacer(),
            FilledButton(
              onPressed: () {
                setState(() {
                  active = !active;
                });
              },
              child: const Text('Play'),
            ),
          ],
        ),
      ),
    );
  }
}
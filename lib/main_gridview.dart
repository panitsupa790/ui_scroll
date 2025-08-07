import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = List.generate(100, (i) => 'Item ${i + 1}');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chapter6'),
          backgroundColor: Colors.deepPurple,
        ),
        body: GridView.builder(
          padding: EdgeInsets.all(8.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            crossAxisCount: 3,
            childAspectRatio: 0.9,
          ),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int idx) {
            return Container(
              color: Colors.lightGreen[100 + (idx % 6) * 100],
              child: Center(
                child: Text(items[idx], style: const TextStyle(fontSize: 16)),
              ),
            );
          },
        ),
      ),
    );
  }
}

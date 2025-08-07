import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = List.generate(50, (i) => 'Item ${i + 1}');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chapter6'),
          backgroundColor: Colors.deepPurple,
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int indx) {
            return ListTile(
              title: Text(items[indx]),
              subtitle: Text(items[indx]),
              onTap: () {
                print(items[indx]);
              },
            );
          },
        ),
      ),
    );
  }
}

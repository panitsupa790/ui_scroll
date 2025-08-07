import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chapter6'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Stack(
          children: <Widget>[
            // รูปภาพพื้นหลัง
            Image.network(
              'https://picsum.photos/id/1015/300/300',
              fit: BoxFit.cover,
            ),

            // Text ที่กำหนดตำแหน่งไว้มุมบนซ้าย
            Positioned(
              top: 10.0,
              left: 10.0,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.black.withOpacity(0.5), // พื้นหลังกึ่งโปร่งใส
                child: const Text(
                  'Top Left',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            Positioned(
              top: 10.0,
              right: 10.0,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.black.withOpacity(0.5), // พื้นหลังกึ่งโปร่งใส
                child: const Text(
                  'Top Right',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            Positioned(
              bottom: 10.0,
              left: 10.0,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.black.withOpacity(0.5), // พื้นหลังกึ่งโปร่งใส
                child: const Text(
                  'Bottom Left',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            // Icon ที่กำหนดตำแหน่งไว้มุมล่างขวา
            Positioned(
              bottom: 10.0,
              right: 10.0,
              child: Container(
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle, // ทำให้เป็นป้ายวงกลม
                ),
                child: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:file_system_demo/way1/pages/Homepage_way1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter File System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage_way1(),
    );
  }
}

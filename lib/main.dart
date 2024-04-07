import 'package:flutter/material.dart';
import 'designs/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tracry',
      home: TranPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
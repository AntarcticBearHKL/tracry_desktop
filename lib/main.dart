import 'package:flutter/material.dart';
import 'designs/main_page.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

void main() {
  runApp(MyApp());

  doWhenWindowReady(() {
    const initialSize = Size(1024, 768);
    appWindow.minSize = initialSize;
    appWindow.size = initialSize;
    appWindow.show();
  });
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
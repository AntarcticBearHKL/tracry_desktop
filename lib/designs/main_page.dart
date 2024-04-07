import 'package:flutter/material.dart';

class TranPage extends StatefulWidget {
  @override
  _TranPage createState() => _TranPage();
}

class _TranPage extends State<TranPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
        ],
      ),
    );
  }
}
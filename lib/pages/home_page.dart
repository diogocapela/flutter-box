import 'package:flutter/material.dart';
import '../widgets/text_box.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter BOX'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextBox(Colors.red),
            TextBox(Colors.green),
            TextBox(Colors.blue),
          ]),
    );
  }
}
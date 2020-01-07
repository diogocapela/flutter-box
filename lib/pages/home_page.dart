import 'package:flutter/material.dart';

import '../widgets/image_box.dart';
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
            ImageBox('assets/images/tokyo.jpg'),
            TextBox('Title 1', 'A description goes here...', Colors.red),
            TextBox('Title 2', 'A description goes here...', Colors.green),
            TextBox('Title 3', 'A description goes here...', Colors.blue),
          ]),
    );
  }
}
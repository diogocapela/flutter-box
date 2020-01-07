import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  // Properties
  final Color _color;

  // Constructor
  TextBox(this._color);

  // Render
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _color,
      ),
      child: Text('Some text here...'),
    );
  }
}
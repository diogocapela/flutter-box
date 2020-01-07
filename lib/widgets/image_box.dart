import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  // Properties
  final String _filePath;

  // Constructor
  ImageBox(
    this._filePath
  );

  // Render
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: 200.0,
      ),
      decoration: BoxDecoration(color: Colors.blue),
      child: Image.asset(_filePath, fit: BoxFit.cover)
    );
  }
}
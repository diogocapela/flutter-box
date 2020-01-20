import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  // Properties
  final String _title;
  final String _description;
  final Color _color;

  // Style Constants
  static const double _horizontalPadding = 16.0;
  static const double _verticalPadding = 16.0;

  // Constructor
  TextBox(
    this._title,
    this._description,
    this._color
  );

  // Render
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(_horizontalPadding, _verticalPadding, _horizontalPadding, 0.0),
          child: Text(_title, style: Theme.of(context).textTheme.title)
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(_horizontalPadding, 0.0, _horizontalPadding, _verticalPadding),
          child: Text(_description, style: Theme.of(context).textTheme.body1)
        ),
      ],
    );
  }
}
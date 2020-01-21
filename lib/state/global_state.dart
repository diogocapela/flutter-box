import 'package:flutter/material.dart';

class GlobalState with ChangeNotifier {
  int _value = 33424;

  int get value => _value;

  set value(int newValue) {
    _value = newValue;
    notifyListeners();
  }
}

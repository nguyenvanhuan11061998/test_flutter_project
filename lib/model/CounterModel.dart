

import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  int _counter = 0;

  getCounter() => _counter;

  setCounter(counter) => _counter = counter;

  void incrementCounter() {
    _counter ++;
    notifyListeners();
  }

  void decrementCounter() {
    _counter --;
    notifyListeners();
  }
}
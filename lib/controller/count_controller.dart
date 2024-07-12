import 'package:flutter/material.dart';

class CountController extends ChangeNotifier {
  int _currentCount = 0;
  int get getData {
    return _currentCount;
  }

  void increaseCount() {
    _currentCount++;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class CountController extends GetxController {
  RxInt _currentCount = 0.obs;
  RxInt get getData {
    return _currentCount;
  }

  void increaseCount() {
    _currentCount++;
    // notifyListeners();
  }
}

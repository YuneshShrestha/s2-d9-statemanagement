import 'package:get/get.dart';

class CountController extends GetxController {
  RxInt _currentCount = 0.obs;
  RxInt get getData {
    return _currentCount;
  }

  void increaseCount() {
    _currentCount++;
  }
}

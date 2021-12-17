import 'package:get/get.dart';

class CounterController extends GetxController {
  //TODO: Implement CounterController

  var count = 0.obs;

  void increment() => count.value++;
  void decrement() => count.value--;
}

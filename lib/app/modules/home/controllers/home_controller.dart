import 'package:get/get.dart';
import 'package:getx_playground/app/modules/Counter/controllers/counter_controller.dart';

class HomeController extends GetxController {
  CounterController counterController = Get.find<CounterController>();
}

import 'package:get/get.dart';

class CountController extends GetxController {
  var count = 0.obs;

  increment() {
    count++;
    // Calling update() method of GetxController to notify the GetBuilder.
    update();
  }

  decrement() {
    count--;
    // Calling update() method of GetxController to notify the GetBuilder.
    update();
  }
}

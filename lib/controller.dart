import 'package:get/get.dart';

class Controller extends GetxController {
  var counter = 0.obs; //add .obs in variable

  void increment() {
    counter++;
  }
}

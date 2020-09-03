import 'package:get/get.dart';
import 'package:portfolio/controller/home_Controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}

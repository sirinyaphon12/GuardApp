import 'package:get/get.dart';
import 'package:guard_app/app/pages/controller/home_controller.dart';

class HomeBinding extends Bindings {

  @override
  void dependencies() {
    Get.put(HomeController());
   // Get.put(SystemController());
  }
}

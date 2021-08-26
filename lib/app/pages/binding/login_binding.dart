
import 'package:get/get.dart';
import 'package:guard_app/app/pages/controller/login_controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(LoginController());
  }

}
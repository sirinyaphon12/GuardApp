import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get_storage/get_storage.dart';
import 'package:guard_app/app/pages/controller/detail_controller.dart';
import 'package:guard_app/utility/log/Log.dart';

class DetailBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(DetailController());
  }

}
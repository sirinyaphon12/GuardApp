
import 'package:get/get.dart';
import 'package:guard_app/app/pages/controller/dashboard_controller.dart';
import 'package:guard_app/app/pages/controller/patrol_controller.dart';
import 'package:guard_app/app/pages/view/dashboard/dashboard_view.dart';

class DashboardBinding extends Bindings {

  @override
  void dependencies() {
   // Get.put(DashBoardController());
    Get.lazyPut<DashBoardController>(() => DashBoardController());
    Get.lazyPut<PatrolController>(() => PatrolController());
    // Get.put(SystemController());
  }
}
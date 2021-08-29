
import 'package:get/get.dart';
import 'package:guard_app/app/pages/controller/report_problem_controller.dart';

class ReportProblemBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(ReportProblemController());
  }

}
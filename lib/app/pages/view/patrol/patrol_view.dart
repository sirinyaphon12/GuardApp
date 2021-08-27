
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guard_app/app/pages/controller/patrol_controller.dart';
import 'package:guard_app/app/theme/app_texts.dart';

class PatrolScreen extends GetView<PatrolController> {
  const PatrolScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("ตรวจตรา",style: AppTexts.titleTagTextStyle,),
    );
  }
}

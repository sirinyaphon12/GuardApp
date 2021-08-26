
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guard_app/app/core/routes/app_pages.dart';

class SecondMiddleware extends GetMiddleware {
  @override
  int? get priority => 2;

  bool isProfileSet = true;

  @override
  RouteSettings? redirect(String? route) {
    if (isProfileSet == false) {
      return RouteSettings(name: Routes.PROFILE);
    }
  }


}

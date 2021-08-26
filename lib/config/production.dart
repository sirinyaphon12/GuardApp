
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:guard_app/app/pages/controller/home_controller.dart';
import 'package:guard_app/config/application.dart';
import 'package:guard_app/utility/enum/env.dart';


void main()  async {
  await GetStorage.init();
  FlavorConfig(
    name: "Production",
    color: Colors.red,
    location: BannerLocation.topStart,
    variables: {
      "counter": 5,
      "baseUrl": "https://randomuser.me",
      "env":Env.PRODUCTION
    },
  );
  return runApp(Application());
}


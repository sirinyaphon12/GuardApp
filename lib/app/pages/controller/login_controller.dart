
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guard_app/app/theme/constant.dart';

class LoginController extends GetxController{
  final formKey = GlobalKey<FormState>();
  late final TextEditingController username = TextEditingController();
  late final TextEditingController password = TextEditingController();

  @override
  void onInit() {
    //name.value = storage.read(testStorage);
    super.onInit();
    username.text = Constant.USERNAME;
    password.text = Constant.PASSWORD;
  }
}
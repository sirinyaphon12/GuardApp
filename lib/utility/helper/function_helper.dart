

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:guard_app/app/theme/app_texts.dart';
import 'package:guard_app/translations/message_key.dart';
import 'package:sizer/sizer.dart';

class FunctionHelper{
  static get defaultDialog {
     Get.defaultDialog ( title: '',
        titleStyle: TextStyle(fontSize: 0),content: Container(
      padding: EdgeInsets.only(left: 30),
      height: 5.h,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircularProgressIndicator(),
          SizedBox(
            width: 20,
          ),
          Text(
            MessageKey.DIALOG_LOAD,
            style: AppTexts.titleDialogTextStyle,
          )
        ],
      ),
    ),barrierDismissible: false);
  }
}
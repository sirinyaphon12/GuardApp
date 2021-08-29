

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guard_app/app/theme/app_texts.dart';
import 'package:guard_app/app/theme/constant.dart';
import 'package:guard_app/translations/message_key.dart';
import 'package:image_picker/image_picker.dart';
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

  static dialogPickImage(Function(List<XFile>) onPickImage,{required List<XFile> temp}){

    Get.defaultDialog ( title: '',
        titleStyle: TextStyle(fontSize: 0),content: Container(
          height: 12.h,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                child: Column(
                  children: [
                    Image.asset(Constant.IMG_CAMERA_ICON,width: 15.w,height: 15.w,),
                    Text(MessageKey.CAMERA,style: AppTexts.labelPickDialogTextStyle,)
                  ],
                ),
                onTap: () async {
                  final XFile? pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
                  if(pickedFile!=null){
                    onPickImage([pickedFile]);
                  }else{
                    Get.back();
                  }
                },
              ),
              InkWell(
                child: Column(
                  children: [
                    Image.asset(Constant.IMG_GALLERY_ICON,width: 15.w,height: 15.w,),
                    Text(MessageKey.GALLERT,style: AppTexts.labelPickDialogTextStyle,)
                  ],
                ),
                onTap: () async {
                  Get.back();
                  final List<XFile>? pickedFile = await ImagePicker().pickMultiImage();
                  if (pickedFile!.isNotEmpty) {
                    List<XFile> data = <XFile>[]..addAll(temp);
                    data.addAll(pickedFile);
                    onPickImage(data);
                  }else{
                    Get.back();
                  }
                },
              ),

            ],
          ),
        ),barrierDismissible: true);
  }


  static Future pickImage(ImageSource imageSource) async {
    final XFile? pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile!=null) {

    } else {
      print('No image selected.');
    }

  }
}
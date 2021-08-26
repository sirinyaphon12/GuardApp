import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guard_app/app/theme/app_colors.dart';
import 'package:guard_app/app/theme/app_texts.dart';
import 'package:guard_app/app/theme/constant.dart';
import 'package:sizer/sizer.dart';

class AppTextButton extends StatelessWidget {
  final String textButton;
  late double width;
  final VoidCallback onPressed;

  AppTextButton({this.width=0,required this.onPressed, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width!=0?width:Get.width,
      child: TextButton(onPressed: ()=>onPressed.call(),style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Constant.BUTTON_RADIUS.w),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
          primaryColor,
        ),
        shadowColor: MaterialStateProperty.all(primaryColor),
        overlayColor: MaterialStateProperty.all(
          Colors.white.withOpacity(0.3),
        ),
      ), child: Text(textButton,style: buttonTextStyle,)),
    );
  }
}

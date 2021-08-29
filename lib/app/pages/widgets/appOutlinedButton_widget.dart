
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:guard_app/app/theme/app_colors.dart';
import 'package:guard_app/app/theme/app_texts.dart';
import 'package:guard_app/app/theme/constant.dart';
import 'package:sizer/sizer.dart';

class AppOutlinedButton extends StatelessWidget {
  final String textButton;
  late double width;
  late String icon;
  final Color? textColor;
  final Color? bolderSideColor;
  final Color? iconColor;
  final VoidCallback onPressed;
  AppOutlinedButton({this.width=0,required this.onPressed, required this.textButton,this.icon='', this.textColor, this.bolderSideColor, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width!=0?width:Get.width,
      child: OutlinedButton(onPressed: ()=>onPressed.call(),style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Constant.BUTTON_RADIUS.w),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
          Colors.white,
        ),

        shadowColor: MaterialStateProperty.all(secondaryColor.withOpacity(0.8)),
        elevation: MaterialStateProperty.all(1.5.w),
        side: MaterialStateProperty.all(BorderSide(
            color: bolderSideColor ?? primaryColor,
            width: Constant.OUTlINEDBUTTON_RADIUS.w,
            style: BorderStyle.solid
        )),
        overlayColor: MaterialStateProperty.all(
          secondaryColor,
        ),
      ), child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon.isNotEmpty?Expanded(flex: 1,child: Align(alignment: Alignment.centerRight,child: SvgPicture.asset(icon,color: iconColor,),)):SizedBox(),
          SizedBox(width: 3.w,),
          Expanded(flex: icon.isNotEmpty?3:0,child: Text(textButton,style: AppTexts.outLinedButtonStyle(textColor: textColor),))
        ],
      )),
    );
  }
}
//

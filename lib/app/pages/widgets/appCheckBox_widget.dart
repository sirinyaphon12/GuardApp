import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:guard_app/app/theme/app_texts.dart';
import 'package:guard_app/app/theme/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class AppCheckBox extends StatelessWidget {

 final RxBool selectBox;
 final String label;

  const AppCheckBox({Key? key, required this.selectBox,this.label=''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
        ()=>InkWell(
          child: Container(
            child: Row(
              children: [
                SvgPicture.asset(selectBox.value?Constant.SVG_CHECKBOX:Constant.SVG_UNCHECK_BOX,width: 4.5.w,height: 4.5.w,),
                SizedBox(width: 2.w),
                Text(label,style: AppTexts.textButtonStyle,)
              ],
            ),
          ),
          onTap: ()=> selectBox.toggle(),
        )
    );
  }
}

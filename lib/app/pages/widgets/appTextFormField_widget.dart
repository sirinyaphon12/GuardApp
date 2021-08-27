import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:guard_app/app/theme/app_texts.dart';
import 'package:guard_app/app/theme/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final String labelTextForm;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final bool? obscureText;

  AppTextFormField(
      {this.validator,
      this.labelTextForm = "write label text",
      this.controller,
      this.obscureText = false});

  RxBool onShowPass = false.obs;

  init() {
    onShowPass(obscureText!);
  }

  @override
  Widget build(BuildContext context) {
    init();
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 1.5.h),
          Text(labelTextForm, style: AppTexts.labelTextStyle),
          SizedBox(height: 0.5.h),
          Stack(
            children: [
              ObxValue((v) {
                return TextFormField(
                  obscureText: (v as RxBool).value,
                  controller: controller,
                  decoration: new InputDecoration(
                      contentPadding: EdgeInsets.only(
                          left: 3.w, top: 1.w, bottom: 1.w, right: 2.w),
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(
                            Constant.FORM_FIELD_RADIUS.w),
                        borderSide: new BorderSide(),
                      )),
                  validator: validator,
                    style:AppTexts.TextFieldStyle
                );
              }, onShowPass),
              obscureText!
                  ? Positioned(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: InkWell(
                          child: Container(
                            child: ObxValue((v) {
                              return Image.asset(
                                (v as RxBool).value
                                    ? Constant.IMG_HIDE_PASS
                                    : Constant.IMG_SHOW_PASS,
                                width: 5.w,
                              );
                            }, onShowPass),
                          ),
                          onTap: () {
                            onShowPass(!onShowPass.value);
                          },
                        ),
                      ),
                      right: 3.w,
                top: 1.8.h,
                    )
                  : SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}

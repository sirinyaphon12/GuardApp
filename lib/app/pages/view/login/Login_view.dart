import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:guard_app/app/core/routes/app_pages.dart';
import 'package:guard_app/app/pages/controller/login_controller.dart';
import 'package:guard_app/app/pages/widgets/appCheckBox_widget.dart';
import 'package:guard_app/app/pages/widgets/appOutlinedButton_widget.dart';
import 'package:guard_app/app/pages/widgets/appTextButton_widget.dart';
import 'package:guard_app/app/pages/widgets/appTextFormField_widget.dart';
import 'package:guard_app/app/theme/app_texts.dart';
import 'package:guard_app/app/theme/constant.dart';
import 'package:guard_app/translations/message_key.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: Get.width,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Constant.SVG_LOGO,
                  width: 65.w,
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.h),
                  width: 80.w,
                  child: Form(
                    key: controller.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(MessageKey.LOGIN, style: AppTexts.titleTagTextStyle),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        AppTextFormField(
                          controller: controller.username,
                          labelTextForm:
                              "${MessageKey.EMAIL} / ${MessageKey.PHONE} :",
                          validator: (value) =>
                              value!.isEmpty ? MessageKey.INPIT_EMPTY : null,
                        ),
                        AppTextFormField(
                          controller: controller.password,
                          labelTextForm: "${MessageKey.PASSWORD} :",
                          validator: (value) =>
                              value!.isEmpty ? MessageKey.INPIT_EMPTY : null,
                          obscureText: true,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppCheckBox(selectBox: true.obs,label: MessageKey.REMEMBER_ME,),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  MessageKey.FORGETPASS,
                                  style: AppTexts.textButtonStyle,
                                ))
                          ],
                        ),
                        AppTextButton(
                          textButton: MessageKey.LOGIN,
                          onPressed: () {
                            if (controller.formKey.currentState!.validate()) {
                             Get.offNamed(Routes.DASHBOARD);
                            }
                          },
                        ),
                        SizedBox(height: 2.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset(Constant.SVG_LINE_BLACK),
                            Text(
                              MessageKey.OR,
                              style: AppTexts.textBodyStyle,
                            ),
                            SvgPicture.asset(Constant.SVG_LINE_BLACK),
                          ],
                        ),
                        SizedBox(height: 2.h),
                        AppOutlinedButton(
                          icon: Constant.SVG_GOOGLE_ICON,
                          textButton: '${MessageKey.CONTIUNUSING} ${MessageKey.GOOGLE}',
                          onPressed: () {},
                        ),
                        AppOutlinedButton(
                          icon: Constant.SVG_FACEBOOK_ICON,
                          textButton: '${MessageKey.CONTIUNUSING} ${MessageKey.FACEBOOK}',
                          onPressed: () {},
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              MessageKey.NOT_ACCOUNT_YET,
                              style: AppTexts.textButtonStyle,
                            ),
                            SizedBox(),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  '${MessageKey.REGISTER}?',
                                  style: AppTexts.textButton_UnerLineStyle,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

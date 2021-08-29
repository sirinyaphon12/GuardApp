import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guard_app/app/pages/controller/report_problem_controller.dart';
import 'package:guard_app/app/pages/widgets/appOutlinedButton_widget.dart';
import 'package:guard_app/app/pages/widgets/appTextButton_widget.dart';
import 'package:guard_app/app/pages/widgets/appTextFormField_widget.dart';
import 'package:guard_app/app/pages/widgets/app_form_pickImage_widget.dart';
import 'package:guard_app/app/pages/widgets/default_body_widget.dart';
import 'package:guard_app/translations/message_key.dart';
import 'package:sizer/sizer.dart';

class ReportProblemScreen extends GetView<ReportProblemController> {
  const ReportProblemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultBody(
      title: MessageKey.REPORT_PROBLEM,
      body: Center(
        child: Container(
          width: 100.w,
          child: ListView(
            children: <Widget>[
              Card(
                margin: EdgeInsets.zero,
                elevation: 0.5.w,
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(right: 5.w,left: 5.w),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 2.w),
                            child: AppTextFormField(
                              labelTextForm: "${MessageKey.PROBLEM}:",
                              validator: (value) =>
                              value!.isEmpty ? MessageKey.INPIT_EMPTY : null,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 2.w),
                            child: AppTextFormField(
                              maxLines: 5,
                              labelTextForm: "${MessageKey.DETAIL} :",
                              validator: (value) =>
                              value!.isEmpty ? MessageKey.INPIT_EMPTY : null,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 2.w),
                            child: AppTextFormField(
                              labelTextForm: "${MessageKey.LOCATION} :",
                              validator: (value) =>
                              value!.isEmpty ? MessageKey.INPIT_EMPTY : null,
                            ),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          )
                        ],
                      ),
                      FormPickImage(files: (files){}),
                      SizedBox(
                        height: 3.h,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppOutlinedButton(
                          width: 30.w,
                          textButton: MessageKey.CANCEL,
                          onPressed: () => Get.back(),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        AppTextButton(
                          width: 30.w,
                          textButton: MessageKey.REPORT_PROBLEM,
                          onPressed: () async {},
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

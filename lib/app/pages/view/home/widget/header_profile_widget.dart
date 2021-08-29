
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guard_app/app/core/routes/app_pages.dart';
import 'package:guard_app/app/pages/widgets/appCircleButton_widget.dart';
import 'package:guard_app/app/pages/widgets/appOutlinedButton_widget.dart';
import 'package:guard_app/app/theme/app_colors.dart';
import 'package:guard_app/app/theme/app_texts.dart';
import 'package:guard_app/translations/message_key.dart';
import 'package:sizer/sizer.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 1.h),
      width: Get.width,
      child: Column(
        children: [
          Row(
            children: [
              Spacer(),
              ClipRRect(
                borderRadius:
                BorderRadius.circular(100.w),
                child: CachedNetworkImage(
                  width: 20.w,
                  imageUrl: "https://www.img.in.th/images/c44b0926e185bfab84886ddb23fb1fe1.png",
                  progressIndicatorBuilder: (context, url, downloadProgress) => GetPlatform.isIOS?CupertinoActivityIndicator():CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("นาย ขันเงิน เงินขัน",style: AppTexts.titleTextStyle),
                  Text("พนักงาน รปภ",style: AppTexts.subTitleTextStyle)
                ],
              ),
              Spacer(flex: 3,),
              Row(
                children: [
                  CircleButton(size: 10.w, iconData: Icons.notifications_none,onTap: () {

                  },badge: true,),
                  SizedBox(width: 2.w,),
                  CircleButton(size: 10.w, iconData: Icons.settings,onTap: () {

                  },)
                ],
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: 1.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppOutlinedButton(
                width: 40.w,
                textButton: MessageKey.REPORT_PROBLEM,
                onPressed: () {

                  Get.toNamed(Routes.REPORTPROBLEM);
                },
              ),
              SizedBox(width: 3.w,),
              AppOutlinedButton(
                width: 40.w,
                textButton: MessageKey.SCAN_QR,
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }


}

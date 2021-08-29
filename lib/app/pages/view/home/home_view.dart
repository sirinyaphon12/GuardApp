import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:get/get.dart';
import 'package:guard_app/app/core/routes/app_pages.dart';
import 'package:guard_app/app/core/viewmodel/week_model.dart';
import 'package:guard_app/app/pages/controller/home_controller.dart';
import 'package:guard_app/app/pages/view/home/widget/header_profile_widget.dart';
import 'package:guard_app/app/theme/app_colors.dart';
import 'package:guard_app/app/theme/app_texts.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends GetView<HomeController> {
  // ดึงค่าจาก ไฟล์อื่นได้ หมายถึงหน้า อื่นได้

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        child: SingleChildScrollView(
          child: StickyHeader(
            header: HeaderProfile(),
            content: Column(
              children: [
                SizedBox(
                  height: 2.h,
                ),
                _weekdayTag(),
                Column(
                  children: WeekData.asMap().map((key, value) => MapEntry(key,_weekdayCard(item: value))).values.toList(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _weekdayCard({required WeekModel item}) {
    return Container(
      padding: EdgeInsets.all(2.5.w),
      height: 12.h,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.black26 ),
        ),
        color: Colors.white,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(2.w),
            child: CachedNetworkImage(
              width: 20.w,
              imageUrl:
              item.image,
              progressIndicatorBuilder: (context, url, downloadProgress) => GetPlatform.isIOS?CupertinoActivityIndicator():CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(margin: EdgeInsets.only(left: 2.5.w),child: Text(item.title, style: AppTexts.titleTextStyle),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("จุดปฏิบัติงาน:", style: AppTexts.subTitleTextStyle),
                          Text(item.point, style: AppTexts.subTitleTextStyle),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("สถานที่ทำงาน::", style: AppTexts.subTitleTextStyle),
                          Text(item.place, style: AppTexts.subTitleTextStyle),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("วัน / เวลาทำงาน:", style: AppTexts.subTitleTextStyle),
                         Row(
                           children: [
                             Text(item.date, style: AppTexts.subTitleTextStyle),
                             SizedBox(width: 2.w,),
                             _ConvertWeekDay(item.range),

                           ],//Range
                         )
                        ],
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }

  Widget _ConvertWeekDay(Range range){
    var text = 'เช้า';
     Color color;
     Color text_Color;
    if(range==Range.morning){
      text = 'เช้า';
      color = Colors.red.shade100;
      text_Color = Colors.red;
    }else if(range==Range.afternoon){
      text = 'บ่าย';
      color = Colors.green.shade100;
      text_Color = Colors.green;
    }else{
      text = 'ดึก';
      color = Colors.amber.shade100;
      text_Color = Colors.amber;
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(1.w),
      child: Container(
        padding: EdgeInsets.only(left: 2.w,right: 2.w),
        color: color,
        child: Text(text,style: AppTexts.weekDayStyle(text_Color)),
      ),
    );
  }

  Widget _weekdayTag() {
    return Container(
      color: primaryColor,
      padding: EdgeInsets.all(2.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('งานประจำสัปดาห์', style: AppTexts.titleWeedTagStyle),
          Row(
            children: [
              Text('18 ส.ค. - 25 ส.ค.', style: AppTexts.subTitleWeedTagStyle),
              SizedBox(
                width: 2.w,
              ),
              _rectangleButton(iconData: Icons.arrow_left),
              SizedBox(
                width: 1.5.w,
              ),
              _rectangleButton(iconData: Icons.arrow_right),
            ],
          )
        ],
      ),
    );
  }

  Widget _rectangleButton({required IconData iconData}) {
    return Container(
      width: 5.w,
      height: 5.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1.w),
        color: Colors.white,
        shape: BoxShape.rectangle,
      ),
      child: Icon(
        iconData,
        color: primaryColor,
        size: 5.w,
      ),
    );
  }
}

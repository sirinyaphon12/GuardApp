
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guard_app/app/theme/app_texts.dart';
import 'package:sizer/sizer.dart';

class DefaultBody extends StatelessWidget {
  final String title;
  final IconData? actionsIcon;
  final Widget body;
  const DefaultBody({Key? key, required this.title, this.actionsIcon, required this.body}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back)),
        actions: [
          actionsIcon!=null?IconButton(onPressed: (){}, icon: Icon(actionsIcon)):SizedBox()
        ],
        title: Text(title,style: AppTexts.titleWeedTagStyle,),
      ),
      body: body,
    );
  }
}

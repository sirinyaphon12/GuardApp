
import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:get/get.dart';
import 'package:guard_app/app/core/routes/app_pages.dart';
import 'package:guard_app/app/pages/controller/home_controller.dart';
import 'package:guard_app/app/theme/app_colors.dart';
import 'package:guard_app/app/theme/app_texts.dart';
import 'package:guard_app/translations/message_key.dart';



class HomeScreen extends GetView<HomeController>{
 // ดึงค่าจาก ไฟล์อื่นได้ หมายถึงหน้า อื่นได้

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("Home Screen ${FlavorConfig.instance.name}"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Obx(
               ()=> Text("This is home screen ${controller.count}",style: TextStyle(fontSize: 24),)
           ),
            TextButton(onPressed: (){
              Get.changeTheme(ThemeData.light());
              Get.snackbar("this is snackbar","message test",snackPosition:SnackPosition.BOTTOM);
              // Get.toNamed("/detail");
              // Get.offNamed("/detail"); open and clear screen for Name
              // Get.off(DetailScreen()); open and clear screen
            }, child: Text("DefaultSnackbar",style: cardTextStyle)),
            TextButton(onPressed: (){
            Get.defaultDialog(title: "this is dilog");
              // Get.toNamed("/detail");
              // Get.offNamed("/detail"); open and clear screen for Name
              // Get.off(DetailScreen()); open and clear screen
            }, child: Text("DefaultDilog",style: cardTextStyle)),
            TextButton(onPressed: (){
              controller.increment();
            //  controller.fetchNews();
             // Get.toNamed("/detail");
              // Get.offNamed("/detail"); open and clear screen for Name
              // Get.off(DetailScreen()); open and clear screen
            }, child: Text("Count Number",style: cardTextStyle)),
            TextButton(onPressed: (){

           //   print(controller.fetchTextFromApi());
            Get.toNamed(Routes.DETAIL);
             // Get.offNamed("/detail"); open and clear screen for Name
             // Get.off(DetailScreen()); open and clear screen
            }, child: Text("Go to detail",style: cardTextStyle)),
            Divider(),
            Obx(
                ()=>Text("GetStorage => ${controller.name}",textAlign: TextAlign.center,style: cardTextStyle)
            ),
            Divider(),
            Text("translation",style: TextStyle(fontSize: 24),),
            SizedBox(height: 20),
            Text("translation => tr => ${MessageKey.CONTIUNUSING}"),
            Divider(),
            Text("translation => trParams => ${"logged_in".trParams({
              'name': 'Jhon',
              'email': 'jhon@example.com'
            })}",textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}

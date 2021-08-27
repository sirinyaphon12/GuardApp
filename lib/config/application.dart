import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:guard_app/app/core/routes/app_pages.dart';
import 'package:guard_app/app/theme/app_theme.dart';
import 'package:guard_app/translations/app_translations.dart';
import 'package:sizer/sizer.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return GetMaterialApp(
            translationsKeys: AppTranslation.translations, // your translations
           // locale: Locale('en', 'US'), // translations will be displayed in that locale
            locale: Locale('th', 'TH'), // translations will be displayed in that locale
            fallbackLocale: Locale('en', 'UK'), //
            theme: appThemeData,
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
            builder: EasyLoading.init(),
          );
        }
    );
  }
}

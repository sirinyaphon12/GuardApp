import 'package:get/get.dart';
import 'package:guard_app/translations/th_TH/th_translations.dart';
import 'en_US/en_translations.dart';



abstract class AppTranslation {
  static Map<String, Map<String, String>>
  translations =
  {
    'en_US' : enUs,
    'th_TH' : thTH
  };

}

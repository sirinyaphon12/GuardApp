import 'package:get/get.dart';
import 'package:guard_app/app/core/middleware/FirstMiddleware.dart';
import 'package:guard_app/app/core/middleware/SecondMiddleware.dart';
import 'package:guard_app/app/pages/binding/dashboard_binding.dart';
import 'package:guard_app/app/pages/binding/login_binding.dart';
import 'package:guard_app/app/pages/binding/home_binding.dart';
import 'package:guard_app/app/pages/binding/profile_binding.dart';
import 'package:guard_app/app/pages/view/dashboard/dashboard_view.dart';
import 'package:guard_app/app/pages/view/home/home_view.dart';
import 'package:guard_app/app/pages/view/login/Login_view.dart';
import 'package:guard_app/app/pages/view/profile/profile_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;
  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
        name: _Paths.HOME,
        page: () => HomeScreen(),
        binding: HomeBinding(),
      //  middlewares: [FirstMiddleware(), SecondMiddleware()]
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileScreen(),
      binding: ProfileBinding()
    ),
    GetPage(
        name: _Paths.DASHBOARD,
        page: () => DashboardScreen(),
        binding: DashboardBinding()
      // binding: ProfileBinding()
    ),
  ];

}

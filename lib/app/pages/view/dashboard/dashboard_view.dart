

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:guard_app/app/pages/controller/dashboard_controller.dart';
import 'package:guard_app/app/pages/view/createqrcode/create_qrcode_view.dart';
import 'package:guard_app/app/pages/view/home/home_view.dart';
import 'package:guard_app/app/pages/view/patrol/patrol_view.dart';
import 'package:guard_app/app/theme/app_colors.dart';
import 'package:guard_app/app/theme/app_texts.dart';
import 'package:guard_app/app/theme/constant.dart';
import 'package:sizer/sizer.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashBoardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomeScreen(),
                QrCodeScreen(),
                PatrolScreen(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            enableFeedback: true,
            unselectedItemColor: Colors.black,
            selectedItemColor: primaryColor,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedLabelStyle: AppTexts.textButtonStyle,
            unselectedLabelStyle: AppTexts.textButtonStyle,
            elevation: 10.w,
            items: [
              _bottomNavigationBarItem(
                icon: Constant.SVG_HOME_ICON,
                label: 'หน้าแรก',
              ),
              _bottomNavigationBarItem(
                icon: Constant.SVG_QR_CODE_ICON,
                label: 'สร้าง QR Code',
              ),
              _bottomNavigationBarItem(
                icon: Constant.SVG_PATROL_ICON,
                label: 'ตรวจตรา',
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({required String icon, required String label}) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(icon),
      label: label,
    );
  }
}

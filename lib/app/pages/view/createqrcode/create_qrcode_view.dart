
import 'package:flutter/material.dart';
import 'package:guard_app/app/theme/app_texts.dart';

class QrCodeScreen extends StatelessWidget {
  const QrCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("สร้าง QR Code",style: AppTexts.titleTagTextStyle,),
    );
  }
}

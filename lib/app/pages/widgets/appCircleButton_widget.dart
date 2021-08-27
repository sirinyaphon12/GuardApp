

import 'package:flutter/material.dart';
import 'package:guard_app/app/theme/app_colors.dart';

class CircleButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final IconData iconData;
  final double size;

  const CircleButton({Key? key, required this.onTap, required this.iconData,required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkResponse(
      onTap: onTap,
      child:  Container(
        width: size,
        height: size,
        decoration:  BoxDecoration(
          color: primaryColor,
          shape: BoxShape.circle,
        ),
        child:  Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}

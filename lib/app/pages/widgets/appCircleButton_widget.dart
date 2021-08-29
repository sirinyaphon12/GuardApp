

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:guard_app/app/theme/app_colors.dart';
import 'package:sizer/sizer.dart';

class CircleButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final IconData iconData;
  final double size;
  final Color? icon_color;
  final bool badge;

  const CircleButton({Key? key, required this.onTap, required this.iconData,required this.size, this.icon_color, this.badge=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: ()=>onTap.call(),
      child: Container(
        width: size,
        height: size,
        decoration: new BoxDecoration(
          color: icon_color!=null?icon_color:primaryColor,
          shape: BoxShape.circle,
        ),
        child:  Center(
          child: Stack(
            children: [
              Icon(
                iconData,
                color: Colors.white,
              ),
              Positioned(right: 0,child: Badge(
                elevation: 2,
                toAnimate: true,
                showBadge: badge,
                shape: BadgeShape.square,
                badgeColor: Colors.red,
                borderRadius: BorderRadius.circular(8),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

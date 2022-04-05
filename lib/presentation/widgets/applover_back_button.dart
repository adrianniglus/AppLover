import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ApploverBackButton extends StatelessWidget {
  const ApploverBackButton({
    Key? key,
    required this.iconColor,
    required this.circleColor,
    required this.onTap,
  }) : super(key: key);

  final Color iconColor;
  final Color circleColor;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: CircleAvatar(
        backgroundColor: circleColor,
        radius: 15.h,
        child: FaIcon(
          FontAwesomeIcons.chevronLeft,
          color: iconColor,
          size: 12.h,
        ),
      ),
    );
  }
}
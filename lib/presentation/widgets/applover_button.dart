import 'package:applover/style/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApploverButton extends StatelessWidget {
  const ApploverButton({
    Key? key,
    required this.label,
    required this.onTap,
    required this.color,
    required this.labelColor,
    required this.isLoading,
  }) : super(key: key);

  final String label;
  final Function onTap;
  final Color color;
  final Color labelColor;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          border: Border.all(width: 0, color: color),
          borderRadius: BorderRadius.circular(6.h),
        ),
        child: Center(
          child: isLoading
              ? SizedBox(
                  height: 20.h,
                  width: 20.h,
                  child: CircularProgressIndicator(
                    color: labelColor,
                    strokeWidth: 1.5.h,
                  ),
                )
              : Text(
                  label,
                  textAlign: TextAlign.center,
                  style: AppTypography.w400size14.copyWith(color: labelColor),
                ),
        ),
        width: double.infinity,
        height: 45.h,
      ),
    );
  }
}

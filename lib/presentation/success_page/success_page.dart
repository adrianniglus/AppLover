import 'dart:async';
import 'package:applover/presentation/login_page/cubit/login_cubit.dart';
import 'package:applover/presentation/widgets/applover_button.dart';
import 'package:applover/presentation/widgets/applover_input.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:applover/extensions/extension_mixin.dart';
import 'package:applover/presentation/routing/router.gr.dart';
import 'package:applover/style/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:applover/generated/l10n.dart';

class SuccessPage extends StatelessWidget with ExtensionMixin {
  const SuccessPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.getColors().grey,
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 160.h,
              ),
              Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'assets/images/logo/applover.svg',
                  color: context.getColors().white,
                  height: 140.h,
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Text(
                Strings.of(context).login_page_successs_message,
                style: AppTypography.w400size28.copyWith(
                  color: context.getColors().white,
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              
            ],
          ),
        ));
  }
}

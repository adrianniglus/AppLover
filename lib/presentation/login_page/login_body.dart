import 'dart:async';
import 'package:applover/presentation/login_page/cubit/login_cubit.dart';
import 'package:applover/presentation/widgets/applover_button.dart';
import 'package:applover/presentation/widgets/applover_input.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:applover/extensions/extension_mixin.dart';
import 'package:applover/helpers/inputs/input_types.dart';
import 'package:applover/presentation/routing/router.gr.dart';
import 'package:applover/style/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:applover/generated/l10n.dart';

class LoginBody extends StatefulWidget with ExtensionMixin {
  const LoginBody({
    Key? key,
    required this.isLoading,
    required this.areWrongCredentials,
  }) : super(key: key);

  final bool isLoading;
  final bool areWrongCredentials;

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formGlobalKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.getColors().grey,
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Form(
            key: _formGlobalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 90.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    'assets/images/logo/applover.svg',
                    color: context.getColors().white,
                    height: 90.h,
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  Strings.of(context).login_page_title,
                  style: AppTypography.w400size20.copyWith(
                    color: context.getColors().white,
                  ),
                ),
                SizedBox(
                  height: 42.h,
                ),
                ApploverInput(
                  label: Strings.of(context).login_page_email_input,
                  inputType: InputType.email,
                  controller: _emailController,
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 20.h,
                ),
                ApploverInput(
                  label: Strings.of(context).login_page_password_input,
                  inputType: InputType.password,
                  controller: _passwordController,
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(
                  height: 10.h,
                ),
                if (widget.areWrongCredentials)
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      Strings.of(context).login_page_failed_message,
                      textAlign: TextAlign.left,
                      style: AppTypography.w400size14.copyWith(
                        color: context.getColors().red,
                      ),
                    ),
                  ),
                SizedBox(
                  height: 10.h,
                ),
                ApploverButton(
                  label: Strings.of(context).login_page_button,
                  onTap: () {
                    if (_formGlobalKey.currentState!.validate()) {
                      context.read<LoginCubit>().login(
                          _emailController.text, _passwordController.text);
                    }
                  },
                  color: context.getColors().green,
                  labelColor: context.getColors().white,
                  isLoading: widget.isLoading,
                ),
              ],
            ),
          ),
        ));
  }
}

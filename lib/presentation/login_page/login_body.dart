import 'package:animate_do/animate_do.dart';
import 'package:applover/utils/image_uri.dart';
import 'package:applover/presentation/login_page/cubit/login_cubit.dart';
import 'package:applover/presentation/widgets/applover_button.dart';
import 'package:applover/presentation/widgets/applover_input.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:applover/extensions/extension_mixin.dart';
import 'package:applover/helpers/inputs/input_types.dart';
import 'package:applover/style/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:applover/generated/l10n.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginBody extends HookWidget with ExtensionMixin {
  const LoginBody({
    Key? key,
    required this.isLoading,
    required this.areWrongCredentials,
  }) : super(key: key);

  final bool isLoading;
  final bool areWrongCredentials;

  @override
  Widget build(BuildContext context) {
    final _formKey = useMemoized(() => GlobalKey<FormState>());
    final _emailController = useTextEditingController();
    final _passwordController = useTextEditingController();

    return Scaffold(
      backgroundColor: context.getColors().grey,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        child: Form(
          key: _formKey,
          child: FadeInUp(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 90.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    ImageUri.getLogo(),
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
                if (areWrongCredentials)
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
                    if (_formKey.currentState!.validate()) {
                      context.read<LoginCubit>().login(
                          _emailController.text, _passwordController.text);
                    }
                  },
                  color: context.getColors().green,
                  labelColor: context.getColors().white,
                  isLoading: isLoading,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

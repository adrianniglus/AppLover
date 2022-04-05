import 'package:applover/extensions/extension_mixin.dart';
import 'package:applover/helpers/inputs/input_types.dart';
import 'package:applover/helpers/inputs/input_validation_mixin.dart';
import 'package:applover/style/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double borderRadius = 6;
const double borderWidth = 1;

class ApploverInput extends StatefulWidget with ExtensionMixin {
  const ApploverInput({
    Key? key,
    required this.label,
    required this.inputType,
    required this.controller,
    required this.textInputAction,
  }) : super(key: key);

  final String label;
  final InputType inputType;
  final TextEditingController controller;
  final TextInputAction textInputAction;

  @override
  State<ApploverInput> createState() => _ApploverInputState();
}

class _ApploverInputState extends State<ApploverInput>
    with InputValidationMixin {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.inputType == InputType.email
          ? TextInputType.emailAddress
          : null,
      validator: (value) => isInputValid(context, value, widget.inputType),
      controller: widget.controller,
      cursorColor: context.getColors().white,
      style:
          AppTypography.w400size14.copyWith(color: context.getColors().white),
      obscureText: (widget.inputType == InputType.password) &&
              (_passwordVisible == false)
          ? true
          : false,
      enableSuggestions: widget.inputType == InputType.password ? false : true,
      autocorrect: widget.inputType == InputType.password ? false : true,
      textInputAction: widget.textInputAction,
      decoration: InputDecoration(
        suffixIcon: widget.inputType == InputType.password
            ? IconButton(
                splashColor: context.getColors().transparent,
                hoverColor: context.getColors().transparent,
                highlightColor: context.getColors().transparent,
                icon: FaIcon(
                  _passwordVisible == false
                      ? FontAwesomeIcons.eyeSlash
                      : FontAwesomeIcons.eye,
                  size: 16.sp,
                  color: context.getColors().white,
                ),
                onPressed: () => setState(() {
                  _passwordVisible = !_passwordVisible;
                }),
                padding: EdgeInsets.only(right: 17.w),
              )
            : null,
        labelText: widget.label,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelStyle: AppTypography.w400size14.copyWith(
          color: context.getColors().white,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: context.getColors().white,
            width: borderWidth.h,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius.h),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: context.getColors().white,
            width: 2.0.h,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius.h),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: context.getColors().white,
            width: borderWidth.h,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius.h),
          ),
        ),
      ),
    );
  }
}

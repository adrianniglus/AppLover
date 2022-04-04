import 'package:applover/helpers/inputs/input_types.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';
import 'package:applover/generated/l10n.dart';

mixin InputValidationMixin {
  String? isInputValid(
      BuildContext context, String? value, InputType inputType) {
    switch (inputType) {
      case InputType.email:
        if (value != null && isEmail(value)) {
          return null;
        }
        return Strings.of(context).login_page_invalid_email_message;
      case InputType.password:
        if (value != null && value.isNotEmpty) {
          return null;
        }
        return Strings.of(context).login_page_invalid_password_message;
      default:
        return Strings.of(context).default_text;
    }
  }
}

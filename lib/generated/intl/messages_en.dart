// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "default_text": MessageLookupByLibrary.simpleMessage("DEFAULT TEXT"),
        "login_page_button": MessageLookupByLibrary.simpleMessage("Login"),
        "login_page_email_input":
            MessageLookupByLibrary.simpleMessage("Email address"),
        "login_page_failed_message": MessageLookupByLibrary.simpleMessage(
            "Invalid credentials! Try again."),
        "login_page_invalid_email_message":
            MessageLookupByLibrary.simpleMessage("Invalid email address!"),
        "login_page_invalid_password_message":
            MessageLookupByLibrary.simpleMessage("Password cannot be empty!"),
        "login_page_password_input":
            MessageLookupByLibrary.simpleMessage("Password"),
        "login_page_successs_message":
            MessageLookupByLibrary.simpleMessage("Success"),
        "login_page_title": MessageLookupByLibrary.simpleMessage("Login")
      };
}

// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Strings {
  Strings();

  static Strings? _current;

  static Strings get current {
    assert(_current != null,
        'No instance of Strings was loaded. Try to initialize the Strings delegate before accessing Strings.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Strings> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Strings();
      Strings._current = instance;

      return instance;
    });
  }

  static Strings of(BuildContext context) {
    final instance = Strings.maybeOf(context);
    assert(instance != null,
        'No instance of Strings present in the widget tree. Did you add Strings.delegate in localizationsDelegates?');
    return instance!;
  }

  static Strings? maybeOf(BuildContext context) {
    return Localizations.of<Strings>(context, Strings);
  }

  /// `Login`
  String get login_page_title {
    return Intl.message(
      'Login',
      name: 'login_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Email address`
  String get login_page_email_input {
    return Intl.message(
      'Email address',
      name: 'login_page_email_input',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get login_page_password_input {
    return Intl.message(
      'Password',
      name: 'login_page_password_input',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login_page_button {
    return Intl.message(
      'Login',
      name: 'login_page_button',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get login_page_successs_message {
    return Intl.message(
      'Success',
      name: 'login_page_successs_message',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email address!`
  String get login_page_invalid_email_message {
    return Intl.message(
      'Invalid email address!',
      name: 'login_page_invalid_email_message',
      desc: '',
      args: [],
    );
  }

  /// `Password cannot be empty!`
  String get login_page_invalid_password_message {
    return Intl.message(
      'Password cannot be empty!',
      name: 'login_page_invalid_password_message',
      desc: '',
      args: [],
    );
  }

  /// `Invalid credentials! Try again.`
  String get login_page_failed_message {
    return Intl.message(
      'Invalid credentials! Try again.',
      name: 'login_page_failed_message',
      desc: '',
      args: [],
    );
  }

  /// `DEFAULT TEXT`
  String get default_text {
    return Intl.message(
      'DEFAULT TEXT',
      name: 'default_text',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Strings> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Strings> load(Locale locale) => Strings.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

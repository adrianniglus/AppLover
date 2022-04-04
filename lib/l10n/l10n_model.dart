import 'package:flutter/material.dart';
import 'package:applover/l10n/languages.dart';

const englishLanguageCode = EnglishLanguageCode();

class L10nModel with ChangeNotifier {
  String preferredLanguageCode = englishLanguageCode.value;

  void switchLanguage(LanguageCode languageCode) {
    preferredLanguageCode = languageCode.value;
    notifyListeners();
  }
}

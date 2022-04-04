abstract class LanguageCode {
  const LanguageCode();
  String get value;
}

class EnglishLanguageCode extends LanguageCode {
  const EnglishLanguageCode();

  @override
  String get value => 'en';
}


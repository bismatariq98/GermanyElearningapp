import 'package:elearning/localization/locale_constant.dart';

class LanguageData {
  final String flag;
  final String name;
  final String languageCode;

  LanguageData(this.flag, this.name, this.languageCode);

  static List<LanguageData> languageList() {
    return <LanguageData>[
      LanguageData("assets/images/british.png", "English", 'en'),
      LanguageData("assets/images/british.png", "اَلْعَرَبِيَّةُ‎", "ar"),
      LanguageData("assets/images/british.png", "हिंदी", 'hi'),
      LanguageData("assets/images/british.png", "", 'hi'),
    ];
  }
}

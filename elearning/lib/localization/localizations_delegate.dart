import 'package:elearning/localization/language/langauge_fr.dart';
import 'package:elearning/localization/language/langauge_gr.dart';
import 'package:elearning/localization/language/language_It.dart';
import 'package:elearning/localization/language/language_Ml.dart';
import 'package:elearning/localization/language/language_chS.dart';
import 'package:elearning/localization/language/language_chT.dart';
import 'package:elearning/localization/language/language_jp.dart';
import 'package:elearning/localization/language/language_kr.dart';
import 'package:elearning/localization/language/language_rs.dart';
import 'package:elearning/localization/language/language_sp.dart';
import 'package:elearning/localization/language/language_th.dart';
import 'package:elearning/localization/language/language_ur.dart';
import 'package:flutter/material.dart';
import 'package:elearning/localization/language/language_ar.dart';
import 'package:elearning/localization/language/language_en.dart';
import 'package:elearning/localization/language/language_hi.dart';

import 'language/languages.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<Languages> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => [
        'en',
        'ar',
        'hi',
        'gr',
        'fr',
        'chs',
        'cst',
        'kr',
        'ur',
        'hi',
        'th',
        'sp',
        'it',
        'jp',
        'ml',
        'rs'
      ].contains(locale.languageCode);

  @override
  Future<Languages> load(Locale locale) => _load(locale);

  static Future<Languages> _load(Locale locale) async {
    switch (locale.languageCode) {
      case 'en':
        return LanguageEn();
      // case 'ar':
      //   return LanguageAr();
      case 'hi':
        return LanguageHi();
      case 'gr':
        return LanguageGr();
      case 'fr':
        return LanguageFr();
      case 'chs':
        return LanguagechS();
      case 'cst':
        return LanguagechT();
      case 'kr':
        return LanguageKr();
      case 'ur':
        return LanguageUr();
      case 'hi':
        return LanguageHi();
      case 'th':
        return LanguageTh();
      case 'sp':
        return LanguageSp();
      case 'it':
        return LanguageIT();
      case 'jp':
        return LanguageJp();
      case 'ml':
        return LanguageMl();
      case 'rs':
        return LanguageRs();

      default:
        return LanguageEn();
    }
  }

  @override
  bool shouldReload(LocalizationsDelegate<Languages> old) => false;
}

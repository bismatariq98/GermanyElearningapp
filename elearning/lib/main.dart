import 'package:elearning/Screens/Login/components/HomeScreen.dart';
import 'package:elearning/Screens/Login/components/language.dart';
import 'package:elearning/components/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:elearning/Screens/Welcome/welcome_screen.dart';
import 'package:elearning/constants.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:elearning/Screens/Login/components/RoadMapNew.dart';
import 'package:elearning/Screens/Login/components/HomeScreenFav.dart';
import 'package:elearning/Screens/Login/components/lessonScreen.dart';
import 'package:elearning/Screens/Login/components/quizScreen.dart';
import 'package:elearning/Screens/Login/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'localization/locale_constant.dart';

import 'localization/localizations_delegate.dart';

// import 'package:elearning/Screens/Login/components/HomeScreenKatherine.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  static void setLocale(BuildContext context, Locale newLocale) {
    var state = context.findAncestorStateOfType<_MyAppState>();
    state.setLocale(newLocale);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;
  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() async {
    getLocale().then((locale) {
      setState(() {
        _locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: _locale,
      supportedLocales: [
        Locale('en', ''),
        Locale('ar', ''),
        Locale('hi', ''),
        Locale('fr', ''),
        Locale('gr', ''),
        Locale('kr', ''),
        Locale('chs', ''),
        // Locale('cht', ''),
        Locale('ur', ''),
        Locale('th', ''),
        Locale('sp', ''),
        Locale('it', ''),
        Locale('jp', ''),
        Locale('ml', ''),
        Locale('rs', '')
      ],
      localizationsDelegates: [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale?.languageCode == locale?.languageCode &&
              supportedLocale?.countryCode == locale?.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales?.first;
      },
      // localizationsDelegates: context.localizationDelegates,
      // supportedLocales: context.supportedLocales,
      // locale: context.locale,

      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),

      // localizationsDelegates: [
      //   AppLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      // ],

      // home: WelcomeScreen(),
      // home: HomeScreen(),
      // home: LoginScreen().
      home: Language(),
      // home: HomeScreen(),
      // home: roadMap(),
      // home: roadMapNew(),
      // home: QuizScreen(),
/* -------------------------------------------------------------------------- */
/*                                    start                                   */
/* -------------------------------------------------------------------------- */
      // home: lessonScreen(),
      // home: HomeScreenFav(),
      // home: Animations(),
      // home: SubCategory(),
      // home: BottomNav(),
      // home: Grid(),
    );
  }
}

class Grid extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}

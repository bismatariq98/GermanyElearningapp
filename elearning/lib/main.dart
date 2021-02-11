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

// import 'package:elearning/Screens/Login/components/HomeScreenKatherine.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      // home: WelcomeScreen(),
      // home: HomeScreen(),
      // home: LoginScreen()
      // home: HomeScreen(),
      // home: roadMap(),
      // home: roadMapNew(),
      home: QuizScreen(),
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

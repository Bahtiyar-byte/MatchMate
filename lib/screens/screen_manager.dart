import 'package:flutter/material.dart';
import 'auth_screen.dart';
import 'login_screen.dart';
import 'tips_screen.dart';
import 'hobbies_screen.dart';
import 'major_screen.dart';
import 'splash_screen.dart';
import 'package:match_mate/datastore/data_tip.dart';


class ScreenManager {


  static void openSpalashScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => SplashScreen()),
    );
  }


  // Метод для перехода на экран входа
  static void openLoginScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => LoginScreen()),

    );
  }

  // Метод для перехода на экран советов
  static void openTipsScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => TipsScreen()),
    );
  }

  // Метод для перехода на экран увлечений
  static void openHobbiesScreen(BuildContext context, Tip tip) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => HobbiesScreen(tip: tip)),
    );
  }

  // Метод для перехода на экран Major
  static void openMajorScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => MajorScreen()),
    );
  }


}

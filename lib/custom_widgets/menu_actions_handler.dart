import 'package:flutter/material.dart';
import 'package:match_mate/screens/screen_manager.dart';

class MenuActionsHandler {
  static void handleMenuItemSelected(BuildContext context, String value) {
    // Обработка выбора пункта меню
    if (value == 'My hobbies') {
      ScreenManager.openPersonTipsScreen(context);

    } else if (value == 'cabinet') {

    } else if (value == 'settings') {
      // Обработка "Settings"
    } else if (value == 'logout') {

    }
  }
}

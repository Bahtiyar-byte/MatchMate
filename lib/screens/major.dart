import 'package:flutter/material.dart';
import 'package:match_mate/screens/login.dart';
import 'package:flutter/widgets.dart';
import 'package:match_mate/story.dart';
import 'package:match_mate/story_manager.dart';
import 'package:match_mate/story_widget.dart';
import 'package:match_mate/popup_menu_widget.dart';

class MajorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    void handleMenuItemSelected(String value) {
      if (value == 'about') {
        // on "About"
      } else if (value == 'cabinet') {
        // on "Cabinet"
      } else if (value == 'settings') {
        // on "Settings"
      } else if (value == 'logout') {
        // on "Log Out"
      }
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text('Match Mate'),
        centerTitle: true,
        leading: PopupMenuWidget(onMenuItemSelected: handleMenuItemSelected),

        actions: [
          InkWell(
            onTap: () {
              // Ваш код, который выполнится при нажатии на кнопку "Find"
            },
            child: Container(
              width: 32, // Ширина кнопки
              height: 32, // Высота кнопки
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Сделать кнопку круглой
                color: Colors.white, // Цвет кнопки
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/find.png',
                  width: 32,
                  height: 32,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 1, // divider
            color: theme.dividerColor, //
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          StoryWidget(), // Stories
          Container(
            height: 1, // divider
            color: theme.dividerColor, //
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Expanded(
            flex: 3,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/hobbyStart.png',
                          width: 300,
                        ),
                        SizedBox(height: 20),
                        // other elements
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

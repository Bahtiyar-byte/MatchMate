import 'package:flutter/material.dart';
import 'package:match_mate/screens/login.dart';
import 'package:flutter/widgets.dart';
import 'package:match_mate/story.dart';
import 'package:match_mate/story_manager.dart';

class MajorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text('Match Mate'),
        centerTitle: true,
        leading: PopupMenuButton(
          icon: Container(
            padding: EdgeInsets.all(4), // подкладка вокруг иконки
            decoration: BoxDecoration(
              color: Colors.white, // белый фон
              shape: BoxShape.rectangle, // форма контейнера
              border: Border.all(color: Colors.white, width: 2), // белый контур
            ),
            child: Image.asset('assets/images/menu.png', width: 24, height: 24), // ваша иконка
          ),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: Text('About'),
              value: 'about',
            ),
            PopupMenuItem(
              child: Text('Cabinet'),
              value: 'cabinet',
            ),
            PopupMenuItem(
              child: Text('Settings'),
              value: 'settings',
            ),
            PopupMenuItem(
              child: Text('Log Out'),
              value: 'logout',
            ),
          ],
          onSelected: (value) {
            // Обработка выбора в меню
            if (value == 'about') {
              // Действие при выборе "About"
            } else if (value == 'cabinet') {
              // Действие при выборе "Cabinet"
            } else if (value == 'settings') {
              // Действие при выборе "Settings"
            } else if (value == 'logout') {
              // Действие при выборе "Log Out"
            }
          },
        ),

        actions: [
          IconButton(
            icon: Container(
              padding: EdgeInsets.all(4), // подкладка вокруг иконки
              decoration: BoxDecoration(
                color: Colors.white, // белый фон
                shape: BoxShape.rectangle, // форма контейнера
                border: Border.all(color: Colors.white, width: 2), // белый контур
              ),
              child: Image.asset('assets/images/find.png', width: 24, height: 24), // ваша иконка
            ),
            onPressed: () {
              // Действие при нажатии на кнопку поиска
            },
          ),
        ],
      ),

      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                );
              },
            ),
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
                        // Добавьте другие элементы интерфейса
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

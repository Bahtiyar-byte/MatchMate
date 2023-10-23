import 'package:flutter/material.dart';
import 'package:match_mate/people_list.dart';
import 'package:match_mate/story_widget.dart';
import 'package:match_mate/popup_menu_widget.dart';

class MajorScreen extends StatelessWidget {
  final PeopleList peopleList = PeopleList.generatePeople();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    void handleMenuItemSelected(String value) {
      // Обработка выбора пункта меню
      if (value == 'about') {
        // "О программе"
      } else if (value == 'cabinet') {
        // "Кабинет"
      } else if (value == 'settings') {
        // "Настройки"
      } else if (value == 'logout') {
        // "Выйти"
      }
    }

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: theme.colorScheme.background,
        title: Text('Match Mate', style: TextStyle(color: theme.textTheme.bodyLarge?.color)),
        centerTitle: true,
        leading: PopupMenuWidget(onMenuItemSelected: handleMenuItemSelected),
        actions: [
          InkWell(
            onTap: () {
              // Код, который будет выполнен при нажатии
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
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
                child: Image.asset('assets/images/findB.png', width: 32, height: 32),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(height: 1, color: theme.dividerColor, margin: EdgeInsets.symmetric(vertical: 8)),
          StoryWidget(),
          Container(height: 1, color: theme.dividerColor, margin: EdgeInsets.symmetric(vertical: 8)),
          Expanded(
            flex: 3,
            child: PageView.builder(
              itemCount: peopleList.people.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                final person = peopleList.people[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: theme.colorScheme.background,
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(person.image, fit: BoxFit.cover),
                          SizedBox(height: 8),
                          Text(person.title, style: theme.textTheme.headline6?.copyWith(color: theme.textTheme.bodyLarge?.color)),
                          SizedBox(height: 8),
                          Text(person.description, style: TextStyle(color: theme.textTheme.bodyLarge?.color)),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

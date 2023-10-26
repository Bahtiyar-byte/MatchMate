import 'package:flutter/material.dart';
import 'package:match_mate/cards_swipe_widget.dart';
import 'package:match_mate/people_list.dart';
import 'package:match_mate/popup_menu_widget.dart';
import 'package:match_mate/screens/major_screen.dart';
import 'package:match_mate/story_widget.dart';
import 'package:match_mate/tips.dart';
import 'package:match_mate/tips_list_widget.dart';
import 'package:match_mate/screens/hobbies_screen.dart';

class TipsScreen extends StatefulWidget {
  @override
  _TipsScreenState createState() => _TipsScreenState();
}

class _TipsScreenState extends State<TipsScreen> {
  final PeopleList peopleList = PeopleList.generatePeople();
  bool _isSearchVisible = false;

  final List<Tip> tips = [
    Tip('Sport', 'assets/tips/sport.png', ['Skee', 'Tennis', 'Run', 'Football', 'Swim']),
    Tip('Garden', 'assets/tips/garden.png', ['Skee', 'Tennis', 'Run', 'Football', 'Swim']),
    Tip('Games', 'assets/tips/games.png', ['Skee', 'Tennis', 'Run', 'Football', 'Swim']),
    Tip('Tourism', 'assets/tips/tourism.png', ['Skee', 'Tennis', 'Run', 'Football', 'Swim']),
    Tip('Cinema', 'assets/tips/cinema.png', ['Skee', 'Tennis', 'Run', 'Football', 'Swim']),
    Tip('Coocking', 'assets/tips/coocking.png', ['Skee', 'Tennis', 'Run', 'Football', 'Swim']),

    Tip('Sport', 'assets/tips/sport.png', ['Skee', 'Tennis', 'Run', 'Football', 'Swim']),
    Tip('Garden', 'assets/tips/garden.png', ['Skee', 'Tennis', 'Run', 'Football', 'Swim']),
    Tip('Games', 'assets/tips/games.png', ['Skee', 'Tennis', 'Run', 'Football', 'Swim']),
    Tip('Tourism', 'assets/tips/tourism.png', ['Skee', 'Tennis', 'Run', 'Football', 'Swim']),
    Tip('Cinema', 'assets/tips/cinema.png', ['Skee', 'Tennis', 'Run', 'Football', 'Swim']),
    Tip('Coocking', 'assets/tips/coocking.png', ['Skee', 'Tennis', 'Run', 'Football', 'Swim']),


  ];

  void _handleTipSelected(Tip tip) {
    // Обработка выбора Tip

    Navigator.push(

      context,
      MaterialPageRoute(
        builder: (context) => HobbiesScreen(tip: tip),
      ),
    );


  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    void handleMenuItemSelected(String value) {
      // Handle menu item selected
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
              setState(() {
                _isSearchVisible = !_isSearchVisible;
              });
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
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: _isSearchVisible ? 50 : 0,
            child: Visibility(
              visible: _isSearchVisible,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Image.asset('assets/images/search_icon.png'),
                      onPressed: () {
                        setState(() {
                          _isSearchVisible = false;
                        });
                        // Добавьте ваш код для выполнения поиска здесь
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(height: 1, color: theme.dividerColor, margin: EdgeInsets.symmetric(vertical: 8)),
          TipsListWidget(tips: tips, onTipSelected: _handleTipSelected), // Используйте TipsListWidget здесь

          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MajorScreen(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(

              primary: Theme.of(context).hintColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              padding: EdgeInsets.symmetric(vertical: 15),
              minimumSize: Size(double.infinity, 0),
            ),
            child: Text(
              'Skip',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          /*
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Обработчик нажатия кнопки Facebook
                },
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).hintColor, //  цвет фона
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0), // Уменьшаем радиус для создания менее круглых краев
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20), // Устанавливаем горизонтальные отступы
                  minimumSize: Size(150, 0), // Ширина кнопки
                ),
                child: Text(
                  'Previous',
                  style: TextStyle(
                    color: Colors.white, // Белый текст
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(width: 20), // Отступ между кнопками
              ElevatedButton(
                onPressed: () {
                  // Обработчик нажатия кнопки Google
                },
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).hintColor, //  цвет фона
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0), // Уменьшаем радиус для создания менее круглых краев
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20), // Устанавливаем горизонтальные отступы
                  minimumSize: Size(150, 0), // Ширина кнопки
                ),
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white, // Белый текст
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          */
        ],
      ),
    );
  }
}
